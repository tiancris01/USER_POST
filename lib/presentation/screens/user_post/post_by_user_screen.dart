// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:user_post/app/config/colors.dart';

import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/presentation/providers/post/isar_posts_repository.dart';
import 'package:user_post/presentation/providers/post/jsonPH_posts_providers.dart';
import 'package:user_post/presentation/providers/repository_providers_impl.dart';
import 'package:user_post/presentation/screens/user_post/widgets/post_listview.dart';

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
      backgroundColor: AppColors.white.withOpacity(0.95),
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.user.fullName),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(widget.user.phone,
                style: Theme.of(context).textTheme.titleLarge),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  color: AppColors.error,
                ),
                const SizedBox(width: 5.0),
                Text(widget.user.email),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Posts',
              style: TextStyle(
                fontSize: 26,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: postByUser.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (posts) => PostListView(posts: posts),
              error: () => const Text('Error Occurred'),
            )),
          ],
        ),
      ),
    );
  }
}
