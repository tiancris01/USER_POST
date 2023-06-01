import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/infrastructure/datasources/remote_datasources/jsonplaceholder_datasource.dart';
import 'package:user_post/infrastructure/repositores/remote_datasource_repositories/jsonplaceholder_repository_impl.dart';

final userRepositoryProvider = Provider((ref) {
  return JsonPlaceholderRepositoryImpl(
      jphDataSource: JasonPlaceholderDatasource());
});
