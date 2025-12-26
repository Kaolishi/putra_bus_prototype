import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// Placeholder screens - will be moved to features later
class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen({super.key, required this.title});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text(title)), body: Center(child: Text(title)));
}

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/student', // Default to student view for now
    routes: [
      GoRoute(
        path: '/auth',
        builder: (context, state) => const PlaceholderScreen(title: 'Auth Screen'),
      ),
      GoRoute(
        path: '/student',
        builder: (context, state) => const PlaceholderScreen(title: 'Student Map'),
      ),
      GoRoute(
        path: '/driver',
        builder: (context, state) => const PlaceholderScreen(title: 'Driver Dashboard'),
      ),
    ],
  );
});
