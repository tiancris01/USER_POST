import 'package:either_dart/either.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/app/helpers/server_failure.dart';
import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/presentation/providers/users/repository_providers_impl.dart';

final jsonPHNotifierPostProvider =
    StateNotifierProvider<UsersNotifier, List<PostEntitie>>((ref) {
  final getPostByUsers = ref.watch(jsonPHUPostRepoProvider).getPostByUserId;

  return UsersNotifier(getPostByUsers: getPostByUsers);
});

typedef PostCallback = Future<Either<ServerFailure, List<PostEntitie>>>
    Function(int id);

class UsersNotifier extends StateNotifier<List<PostEntitie>> {
  PostCallback getPostByUsers;
  UsersNotifier({
    required this.getPostByUsers,
  }) : super([]);

  Future<void> getPostByUserId(int id) async {
    final response = await getPostByUsers(id);
    response.fold(
      (l) {
        //TODO: SnackBar with error
      },
      (r) {
        state = [...r];
      },
    );
  }
}
