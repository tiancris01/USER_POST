import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/domain/repositories/local_datasource_repositories/isar_local_repository.dart';
import 'package:user_post/domain/usecases/Local_datasource_usecases/isar_local_usecase.dart';

class IsarRepositoryImpl implements IsarLocalRepository {
  final IsarLocalUsecase isarLocalUsecase;

  IsarRepositoryImpl({required this.isarLocalUsecase});

  @override
  Future<List<UserEntitie>> getUsers() {
    return isarLocalUsecase.getUsers();
  }

  @override
  Future<void> saveUsers(List<UserEntitie> users) {
    return isarLocalUsecase.saveUsers(users);
  }

  @override
  Future<List<PostEntitie>> getPostByUserId(int id) {
    return isarLocalUsecase.getPostByUserId(id);
  }

  @override
  Future<void> savePosts(List<PostEntitie> posts) {
    return isarLocalUsecase.savePosts(posts);
  }

  @override
  Future<bool> existPostsByUser(int id) {
    return isarLocalUsecase.existPostsByUser(id);
  }

  @override
  Future<bool> existUsers() {
    return isarLocalUsecase.existUsers();
  }

  @override
  Future<List<UserEntitie>> searchUsers(String query) {
    return isarLocalUsecase.searchUsers(query);
  }
}
