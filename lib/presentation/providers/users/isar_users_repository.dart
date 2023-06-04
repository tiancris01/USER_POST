import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/presentation/providers/repository_providers_impl.dart';
import 'package:user_post/presentation/providers/users/user_state.dart';

final isarUserNotifierProvider =
    StateNotifierProvider<UsersNotifier, UserState>((ref) {
  final getUsers = ref.watch(isarRepoProvider).getUsers;
  final searchUser = ref.watch(isarRepoProvider).searchUsers;
  return UsersNotifier(getUsers: getUsers, searchUser: searchUser);
});

typedef UserCallback = Future<List<UserEntitie>> Function();
typedef SearchCallback = Future<List<UserEntitie>> Function(String query);

class UsersNotifier extends StateNotifier<UserState> {
  UsersNotifier({
    this.searchUser,
    this.getUsers,
  }) : super(const UserState.initial());

  UserCallback? getUsers;
  SearchCallback? searchUser;

  Future<void> getAllUsers() async {
    state = const UserState.initial();
    try {
      final response = await getUsers!();
      state = UserState.data(user: response);
    } catch (e) {
      state = const UserState.error();
    }
  }

  Future<void> search(String query) async {
    state = const UserState.initial();
    try {
      final response = await searchUser!(query);
      state = UserState.data(user: response);
    } catch (e) {
      state = const UserState.error();
    }
  }
}
