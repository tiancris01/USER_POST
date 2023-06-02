import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:user_post/presentation/providers/providers.dart';
import 'package:user_post/presentation/providers/users/posts_providers.dart';

class PostScreen extends ConsumerStatefulWidget {
  static const routeName = 'userPost';

  final String userId;

  const PostScreen({required this.userId, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PostScreenState();
}

class _PostScreenState extends ConsumerState<PostScreen> {
  @override
  void initState() {
    super.initState();
    initilaize();
  }

  void initilaize() async {
    final localUsersPost = await ref
        .watch(isarUserRepoProvider)
        .getPostByUserId(int.parse(widget.userId));
    if (localUsersPost.isEmpty) {
      await ref
          .read(jsonPHPostProvider.notifier)
          .getPostByUsers(int.parse(widget.userId));
      final posts = ref.read(jsonPHPostProvider);
      await ref.watch(isarUserRepoProvider).savePosts(posts);
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Id:  ${widget.userId}'),
      ),
      body: const Center(
        child: Text('Post Screen'),
      ),
    );
  }
}
