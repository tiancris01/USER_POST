import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class PostScreen extends ConsumerStatefulWidget {
  static const routeName = 'userPost';

  final String userId;

  const PostScreen({required this.userId, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PostScreenState();
}

class _PostScreenState extends ConsumerState<PostScreen> {
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
