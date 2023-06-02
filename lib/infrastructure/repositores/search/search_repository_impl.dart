// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/domain/repositories/search/search_repository.dart';
import 'package:user_post/domain/usecases/search/search_usecase.dart';

class SearchRepositoryImpl extends SearchRepository {
  SearchUsecase searchUsecase;
  SearchRepositoryImpl({
    required this.searchUsecase,
  });

  @override
  List<UserEntitie> searchUser(String query) {
    return searchUsecase.searchUser(query);
  }
}
