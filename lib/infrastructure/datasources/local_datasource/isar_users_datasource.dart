import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/domain/usecases/Local_datasource_usecases/isar_users_local_usecase.dart';

class IsarUsersDataSource implements IsarUsersLocalUsecase {
  late Future<Isar> db;

  IsarUsersDataSource() {
    db = openDb();
  }

  Future<Isar> openDb() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [UserEntitieSchema],
        inspector: true,
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }

  @override
  Future<List<UserEntitie>> getUsers() async {
    final isar = await db;
    return isar.userEntities.where().findAll();
  }

  @override
  Future<void> saveUsers(List<UserEntitie> users) async {
    final isar = await db;
    isar.writeTxn(() async {
      await isar.userEntities.putAll(users);
    });
  }

  @override
  Future<PostEntitie> getPostByUserId(int id) {
    // TODO: implement getPostByUserId
    throw UnimplementedError();
  }
}
