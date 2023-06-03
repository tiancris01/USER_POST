// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_post/domain/entities/post/post_entitie.dart';

import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/presentation/providers/users/isar_posts_repository.dart';
import 'package:user_post/presentation/providers/users/jsonPH_posts_providers.dart';

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
  final List<PostEntitie> _post = <PostEntitie>[];
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    await ref.read(jsonPHPostProvider.notifier).getPostByUserId(widget.user.id);
    await ref.read(isarPostProvider.notifier).getPostByUserid(widget.user.id);

    final localPost = ref.watch(isarPostProvider);
    if (localPost.isEmpty) {
      final remotePost = ref.watch(jsonPHPostProvider);
      if (remotePost.isEmpty) {
        return;
      }
      _post.addAll(remotePost);
    } else {
      _post.addAll(localPost);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.user.fullName),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(widget.user.phone),
            Text(widget.user.email),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _post.length,
                itemBuilder: (context, index) {
                  final post = _post[index];
                  return ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.postDetail),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
