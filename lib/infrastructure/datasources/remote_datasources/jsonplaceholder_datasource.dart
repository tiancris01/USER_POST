import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:user_post/app/config/environments.dart';
import 'package:user_post/app/helpers/server_failure.dart';
import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/domain/usecases/remote_datasource_usecases/jsonplaceholder_datasource_usecase.dart';
import 'package:user_post/infrastructure/dtos/users/user_dto.dart';

class JasonPlaceholderDatasource implements JsonplaceholderDatasourceUsecases {
  final baseUrl = '${Environment().config.testApiUrl}';

  final dio = Dio();

  @override
  Future<Either<ServerFailure, List<UserEntitie>>> getUsers() async {
    final response = await dio.get('$baseUrl/users');
    try {
      return Right(
        response.data
            .map<UserEntitie>(
              (e) => UserDTO.fromJson(e).toDomain(),
            )
            .toList(),
      );
    } on DioError catch (e) {
      return Left(
        ServerFailure(
          error: e.message ?? '',
          typeError: e.response!.statusCode ?? 0,
        ),
      );
    }
  }

  @override
  Future<Either<ServerFailure, PostEntitie>> getPostByUserId(int id) {
    // TODO: implement getPostByUserId
    throw UnimplementedError();
  }
}
