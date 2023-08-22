import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cinemapedia_flutter/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      pageBuilder: (context, state) => const HomeScreen() as dynamic,
    ),
  ],
);
