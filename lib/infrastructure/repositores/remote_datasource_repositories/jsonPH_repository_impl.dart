// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:either_dart/either.dart';

import 'package:user_post/app/helpers/server_failure.dart';
import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/domain/repositories/remote_datasource_repositories/jsonPH_repository.dart';
import 'package:user_post/domain/usecases/remote_datasource_usecases/jsonPH_usecase.dart';

class JsonPHRepositoryImpl extends JsonPHRepository {
  final JsonPHUsecases jphDataSource;

  JsonPHRepositoryImpl({
    required this.jphDataSource,
  });

  @override
  Future<Either<ServerFailure, List<UserEntitie>>> getUsers() async {
    return await jphDataSource.getUsers();
  }

  @override
  Future<Either<ServerFailure, List<PostEntitie>>> getPostByUserId(
      int id) async {
    return await jphDataSource.getPostByUserId(id);
  }
}
