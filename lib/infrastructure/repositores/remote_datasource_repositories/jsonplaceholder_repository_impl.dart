// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:either_dart/either.dart';

import 'package:user_post/app/helpers/server_failure.dart';
import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/domain/repositories/remote_datasource_repositories/jsonplaceholder_repository.dart';
import 'package:user_post/domain/usecases/remote_datasource_usecases/jsonplaceholder_datasource_usecase.dart';

class JsonPlaceholderRepositoryImpl extends JsonPlaceholderRepository {
  final JsonplaceholderDatasourceUsecases jphDataSource;

  JsonPlaceholderRepositoryImpl({
    required this.jphDataSource,
  });

  @override
  Future<Either<ServerFailure, List<UserEntitie>>> getUsers() async {
    return await jphDataSource.getUsers();
  }

  @override
  Future<Either<ServerFailure, PostEntitie>> getPostByUserId(int id) {
    // TODO: implement getPostByUserId
    throw UnimplementedError();
  }
}
