import 'package:either_dart/either.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/app/helpers/server_failure.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/presentation/providers/users/users_repository_provider.dart';

final getUsersProvider =
    StateNotifierProvider<UsersNotifier, List<UserEntitie>>((ref) {
  final getUsers = ref.watch(userRepositoryProvider).getUsers;

  return UsersNotifier(getUsers: getUsers);
});

typedef UserCallback = Future<Either<ServerFailure, List<UserEntitie>>>
    Function();

class UsersNotifier extends StateNotifier<List<UserEntitie>> {
  UserCallback getUsers;
  UsersNotifier({
    required this.getUsers,
  }) : super([]);

  Future<void> getAllUsers() async {
    final response = await getUsers();
    response.fold(
      (l) => print(l.error),
      (r) => state = [...state, ...r],
    );
  }
}