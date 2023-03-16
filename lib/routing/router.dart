import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/ui/screens/sign_in.dart';
import '../../features/auth/ui/screens/sign_up.dart';
import '../../features/onboarding/ui/screens/splash_screen.dart';
import '../../features/onboarding/ui/screens/welcome_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/welcome',
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: '/sign-in',
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      path: '/sign-up',
      builder: (context, state) => const SignUpScreen(),
    )
  ],
);