import 'package:flutter/material.dart';
import 'package:user_post/domain/entities/post/post_entitie.dart';

class PostListView extends StatelessWidget {
  const PostListView({
    Key? key,
    required this.posts,
  }) : super(key: key);

  final List<PostEntitie> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
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
    );
  }
}
