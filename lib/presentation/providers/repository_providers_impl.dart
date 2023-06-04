import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/infrastructure/datasources/local_datasource/isar_datasource.dart';
import 'package:user_post/infrastructure/datasources/remote_datasources/jsonPH_datasource.dart';
import 'package:user_post/infrastructure/repositores/local_datasource_repositories/isar_repository_impl.dart';
import 'package:user_post/infrastructure/repositores/remote_datasource_repositories/jsonPH_repository_impl.dart';

final jsonPHUserRepoProvider = Provider((ref) {
  return JsonPHRepositoryImpl(jphDataSource: JasonPHDatasource());
});

final jsonPHUPostRepoProvider = Provider((ref) {
  return JsonPHRepositoryImpl(jphDataSource: JasonPHDatasource());
});

final isarRepoProvider = Provider((ref) {
  return IsarRepositoryImpl(isarLocalUsecase: IsarDataSource());
});
