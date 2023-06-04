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
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return Card(
          elevation: 4,
          surfaceTintColor: Colors.white.withOpacity(0.9),
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: ListTile(
            minVerticalPadding: 10.0,
            dense: true,
            title: Text(post.title,
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold)),
            subtitle: Text(
              post.postDetail,
              textAlign: TextAlign.justify,
            ),
          ),
        );
      },
    );
  }
}
