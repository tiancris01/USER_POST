import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/domain/entities/post/post_entitie.dart';
import 'package:user_post/presentation/providers/post/post_state.dart';
import 'package:user_post/presentation/providers/repository_providers_impl.dart';

final isarNotifierPostProvider =
    StateNotifierProvider<UsersNotifier, PostState>((ref) {
  final getPostByUserId = ref.watch(isarRepoProvider).getPostByUserId;

  return UsersNotifier(getPostByUserId: getPostByUserId);
});

typedef UserCallback = Future<List<PostEntitie>> Function(int);

class UsersNotifier extends StateNotifier<PostState> {
  UsersNotifier({
    required this.getPostByUserId,
  }) : super(const PostState.loading());

  UserCallback getPostByUserId;

  Future<void> getPostByUserid(int id) async {
    state = const PostState.loading();
    try {
      final response = await getPostByUserId(id);
      state = PostState.data(post: response);
    } catch (e) {
      state = const PostState.error();
    }
  }
}
