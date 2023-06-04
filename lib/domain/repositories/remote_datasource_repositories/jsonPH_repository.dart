import 'package:user_post/app/helpers/server_failure.dart';
import 'package:either_dart/either.dart';
import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';

abstract class JsonPHRepository {
  Future<Either<ServerFailure, List<UserEntitie>>> getUsers();
  Future<Either<ServerFailure, List<PostEntitie>>> getPostByUserId(int id);
}
