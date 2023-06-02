import 'package:go_router/go_router.dart';
import 'package:user_post/presentation/screens/home_scree.dart';
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
      path: '/userPost/:userId',
      name: PostScreen.routeName,
      builder: (context, state) {
        // Get the userId from the path
        final userId = state.pathParameters['userId'] ?? '';

        // Return the PostScreen widget
        return PostScreen(userId: userId);
      },
    ),
  ],
);
