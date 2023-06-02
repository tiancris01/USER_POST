import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/presentation/providers/providers.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final localUsers = ref.watch(isarUserRepoProvider).getUsers();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de ingreso'),
      ),
      body: FutureBuilder(
        future: localUsers,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List<UserEntitie> users = snapshot.data as List<UserEntitie>;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  isThreeLine: true,
                  leading: CircleAvatar(
                    child: Text(
                      user.fullName.substring(1, 2).toUpperCase(),
                    ),
                  ),
                  title: Text(user.fullName),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(user.phone),
                      const SizedBox(height: 5.0),
                      Text(user.email),
                    ],
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: () {
                      context.push('/userPost/${user.id}');
                    },
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
