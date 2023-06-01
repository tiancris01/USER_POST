import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/infrastructure/datasources/remote_datasources/jsonPH_Users_datasource.dart';
import 'package:user_post/infrastructure/repositores/remote_datasource_repositories/jsonPH_users_repository_impl.dart';

final jsonPHUserRepoProvider = Provider((ref) {
  return JsonPHUsersRepositoryImpl(jphDataSource: JasonPHUsersDatasource());
});
