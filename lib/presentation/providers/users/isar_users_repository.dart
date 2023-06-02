import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/presentation/providers/providers.dart';

final isarUserProvider =
    StateNotifierProvider<UsersNotifier, List<UserEntitie>>((ref) {
  final getUsers = ref.watch(isarRepoProvider).getUsers;

  return UsersNotifier(getUsers: getUsers);
});

typedef UserCallback = Future<List<UserEntitie>> Function();

class UsersNotifier extends StateNotifier<List<UserEntitie>> {
  UsersNotifier({
    required this.getUsers,
  }) : super([]);

  UserCallback getUsers;

  Future<void> getAllUsers() async {
    final response = await getUsers();
    state = [...state, ...response];
  }
}
