// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/domain/entities/post/post_entitie.dart';

import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/presentation/providers/providers.dart';
import 'package:user_post/presentation/providers/users/posts_providers.dart';

class PostScreen extends ConsumerStatefulWidget {
  static const routeName = 'userPost';

  final UserEntitie user;

  const PostScreen({
    super.key,
    required this.user,
  });

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
    final localUsersPost =
        await ref.read(isarRepoProvider).getPostByUserId(widget.user.id);
    if (localUsersPost.isEmpty) {
      await ref.read(jsonPHPostProvider.notifier).getAllPost(widget.user.id);
      final posts = ref.read(jsonPHPostProvider);
      await ref.read(isarRepoProvider).savePosts(posts);
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    final post = ref.watch(isarRepoProvider).getPostByUserId(widget.user.id);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${widget.user.fullName}'),
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 20),
          Text(widget.user.phone),
          Text(widget.user.email),
          const SizedBox(height: 20),
          FutureBuilder(
            future: post,
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                final List<PostEntitie> posts =
                    snapshot.data as List<PostEntitie>;
                return Expanded(
                  child: ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      final post = posts[index];
                      return ListTile(
                        title: Text(post.title),
                        subtitle: Text(post.postDetail),
                      );
                    },
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        ],
      )),
    );
  }
}
