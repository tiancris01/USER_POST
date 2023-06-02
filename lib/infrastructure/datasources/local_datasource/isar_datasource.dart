import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/domain/usecases/Local_datasource_usecases/isar_local_usecase.dart';

class IsarDataSource implements IsarLocalUsecase {
  late Future<Isar> db;

  IsarDataSource() {
    db = openDb();
  }

  Future<Isar> openDb() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [UserEntitieSchema, PostEntitieSchema],
        inspector: true,
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }

  Future<bool> existPosts(int id) async {
    final result = await getPostByUserId(id);
    return result.isNotEmpty;
  }

  @override
  Future<List<UserEntitie>> getUsers() async {
    final isar = await db;
    return isar.userEntities.where().findAll();
  }

  @override
  Future<void> saveUsers(List<UserEntitie> users) async {
    final isar = await db;
    final existUser = await existUsers();
    if (!existUser) {
      await isar.writeTxn(() async {
        await isar.userEntities.putAll(users);
      });
      return;
    } else {
      return;
    }
  }

  @override
  Future<List<PostEntitie>> getPostByUserId(int id) async {
    final isar = await db;
    final filterPost = isar.postEntities.filter().userIdEqualTo(id).findAll();
    return filterPost;
  }

  @override
  Future<void> savePosts(List<PostEntitie> posts) async {
    final isar = await db;
    final id = posts.last.userId;
    final result = await isar.postEntities.filter().userIdEqualTo(id).findAll();
    if (result.isEmpty) {
      return await isar.writeTxn(() async {
        await isar.postEntities.putAll(posts);
      });
    } else {
      return;
    }
  }

  @override
  Future<bool> existPostsByUser(int id) {
    final result = getPostByUserId(id);
    return result.then((value) => value.isNotEmpty);
  }

  @override
  Future<bool> existUsers() async {
    final result = getUsers();
    return result.then((value) => value.isNotEmpty);
  }
}
