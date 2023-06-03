// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/presentation/providers/users/isar_posts_repository.dart';
import 'package:user_post/presentation/providers/users/jsonPH_posts_providers.dart';
import 'package:user_post/presentation/providers/users/repository_providers_impl.dart';

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
    init();
  }

  void init() async {
    // fetching data from jsonplaceholder
    await ref
        .read(jsonPHNotifierPostProvider.notifier)
        .getPostByUserId(widget.user.id);
    // getting data from state
    final response = ref.read(jsonPHNotifierPostProvider);
    // saving data to isar database
    await ref.read(isarRepoProvider).savePosts(response);
    // getting data from isar database
    await ref
        .read(isarNotifierPostProvider.notifier)
        .getPostByUserid(widget.user.id);
  }

  @override
  Widget build(BuildContext context) {
    final postByUser = ref.watch(isarNotifierPostProvider);
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
              child: ListView.separated(
                itemCount: postByUser.length,
                itemBuilder: (context, index) {
                  final post = postByUser[index];
                  return ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.postDetail),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    thickness: 2,
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
