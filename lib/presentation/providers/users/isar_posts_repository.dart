import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/presentation/providers/users/repository_providers_impl.dart';

final isarPostProvider =
    StateNotifierProvider<UsersNotifier, List<PostEntitie>>((ref) {
  final getPostByUserId = ref.watch(isarRepoProvider).getPostByUserId;

  return UsersNotifier(getPostByUserId: getPostByUserId);
});

typedef UserCallback = Future<List<PostEntitie>> Function(int);

class UsersNotifier extends StateNotifier<List<PostEntitie>> {
  UsersNotifier({
    required this.getPostByUserId,
  }) : super([]);

  UserCallback getPostByUserId;

  Future<void> getPostByUserid(int id) async {
    final response = await getPostByUserId(id);
    state = [...state, ...response];
  }
}
