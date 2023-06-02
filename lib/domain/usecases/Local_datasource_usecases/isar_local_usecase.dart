import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';

abstract class IsarLocalUsecase {
  Future<List<UserEntitie>> getUsers();
  Future<bool> existUsers();
  Future<void> saveUsers(List<UserEntitie> users);
  Future<void> savePosts(List<PostEntitie> posts);
  Future<bool> existPostsByUser(int id);
  Future<List<PostEntitie>> getPostByUserId(int id);
}
