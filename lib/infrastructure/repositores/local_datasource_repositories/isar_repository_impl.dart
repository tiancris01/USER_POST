import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/domain/repositories/local_datasource_repositories/isar_local_repository.dart';
import 'package:user_post/domain/usecases/Local_datasource_usecases/isar_local_usecase.dart';

class IsarRepositoryImpl implements IsarLocalRepository {
  final IsarLocalUsecase isarUsersLocalUsecase;

  IsarRepositoryImpl({required this.isarUsersLocalUsecase});

  @override
  Future<List<UserEntitie>> getUsers() {
    return isarUsersLocalUsecase.getUsers();
  }

  @override
  Future<void> saveUsers(List<UserEntitie> users) {
    return isarUsersLocalUsecase.saveUsers(users);
  }

  @override
  Future<List<PostEntitie>> getPostByUserId(int id) {
    return isarUsersLocalUsecase.getPostByUserId(id);
  }

  @override
  Future<void> savePosts(List<PostEntitie> posts) {
    return isarUsersLocalUsecase.savePosts(posts);
  }
}
