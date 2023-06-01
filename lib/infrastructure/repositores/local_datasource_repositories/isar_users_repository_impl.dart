import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/domain/repositories/local_datasource_repositories/isar_users_local_repository.dart';
import 'package:user_post/domain/usecases/Local_datasource_usecases/isar_users_local_usecase.dart';

class IsarUsersRepositoryImpl implements IsarUsersLocalRepository {
  final IsarUsersLocalUsecase isarUsersLocalUsecase;

  IsarUsersRepositoryImpl({required this.isarUsersLocalUsecase});

  @override
  Future<List<UserEntitie>> getUsers() {
    return isarUsersLocalUsecase.getUsers();
  }

  @override
  Future<void> saveUsers(List<UserEntitie> users) {
    return isarUsersLocalUsecase.saveUsers(users);
  }

  @override
  Future<PostEntitie> getPostByUserId(int id) {
    // TODO: implement getPostByUserId
    throw UnimplementedError();
  }
}
