import 'package:user_post/domain/entities/users/user_entitie.dart';

abstract class SearchUsecase {
  List<UserEntitie> searchUser(String query);
}
