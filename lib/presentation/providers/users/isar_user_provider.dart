import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/infrastructure/datasources/local_datasource/isar_datasource.dart';
import 'package:user_post/infrastructure/repositores/local_datasource_repositories/isar_repository_impl.dart';

final isarUserRepoProvider = Provider((ref) {
  return IsarRepositoryImpl(isarUsersLocalUsecase: IsarDataSource());
});
