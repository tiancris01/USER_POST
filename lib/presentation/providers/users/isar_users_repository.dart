import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/presentation/providers/users/repository_providers_impl.dart';

final isarUserProvider =
    StateNotifierProvider<UsersNotifier, List<UserEntitie>>((ref) {
  final getUsers = ref.watch(isarRepoProvider).getUsers;
  final searchUser = ref.watch(isarRepoProvider).searchUsers;
  return UsersNotifier(getUsers: getUsers, searchUser: searchUser);
});

typedef UserCallback = Future<List<UserEntitie>> Function();
typedef SearchCallback = Future<List<UserEntitie>> Function(String query);

class UsersNotifier extends StateNotifier<List<UserEntitie>> {
  UsersNotifier({
    this.searchUser,
    this.getUsers,
  }) : super([]);

  UserCallback? getUsers;
  SearchCallback? searchUser;

  Future<void> getAllUsers() async {
    state = await getUsers!();
  }

  Future<void> search(String query) async {
    state = await searchUser!(query);
  }
}
