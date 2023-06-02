// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/presentation/providers/users/isar_users_repository.dart';
import 'package:user_post/presentation/providers/users/jsonPH_users_providers.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final List<UserEntitie> _users = <UserEntitie>[];
  List<UserEntitie> _usersToDisplay = <UserEntitie>[];

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await ref.read(jsonPHUserProvider.notifier).getAllUsers();
    await ref.read(isarUserProvider.notifier).getAllUsers();
    final localUsers = ref.watch(isarUserProvider);
    if (localUsers.isEmpty) {
      final remoteUsers = ref.watch(jsonPHUserProvider);
      if (remoteUsers.isEmpty) {
        return;
      }
      _users.addAll(remoteUsers);
      _usersToDisplay = _users;
    } else {
      _users.addAll(localUsers);
      _usersToDisplay = _users;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de ingreso'),
      ),
      body: Column(
        children: [
          _searchBar(),
          Expanded(
            child: ListView.builder(
              itemCount: _usersToDisplay.length,
              itemBuilder: (context, index) {
                final user = _usersToDisplay[index];
                return _usersToDisplay.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : ListTile(
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
                            context.push('/userPost', extra: user);
                          },
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }

  _searchBar() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        autofocus: false,
        onChanged: (searchText) {
          searchText = searchText.toLowerCase();
          setState(() {
            _usersToDisplay = _users.where((u) {
              var fName = u.fullName.toLowerCase();
              return fName.contains(searchText);
            }).toList();
          });
        },
        // controller: _textController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search Users',
        ),
      ),
    );
  }
}

class CustmoScafold extends StatelessWidget {
  const CustmoScafold({
    Key? key,
    required this.label,
    required this.users,
  }) : super(key: key);

  final String label;
  final List<UserEntitie> users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
      ),
      body: ListView.builder(
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
                context.push('/userPost', extra: user);
              },
            ),
          );
        },
      ),
    );
  }
}
