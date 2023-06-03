import 'package:go_router/go_router.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';
import 'package:user_post/presentation/screens/home/home_scree.dart';
import 'package:user_post/presentation/screens/post_by_user_screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/userPost',
      name: PostScreen.routeName,
      builder: (context, state) {
        UserEntitie user = state.extra as UserEntitie;
        return PostScreen(user: user);
      },
    ),
  ],
);
