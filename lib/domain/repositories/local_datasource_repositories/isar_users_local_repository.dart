import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';

abstract class IsarUsersLocalRepository {
  Future<List<UserEntitie>> getUsers();
  Future<void> saveUsers(List<UserEntitie> users);
  Future<PostEntitie> getPostByUserId(int id);
}
