import 'package:user_post/domain/entities/users/user_entitie.dart';

abstract class SearchRepository {
  List<UserEntitie> searchUser(String query);
}
