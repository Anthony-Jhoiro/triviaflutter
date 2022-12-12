import 'package:go_router/go_router.dart';
import 'package:triviaflutter/ui/pages/home/home_page.dart';
import 'package:triviaflutter/ui/pages/signup/signup_page.dart';

final GoRouter mainRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'signup',
      builder: (context, state) => SignupPage(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => HomePage(),
    ),
  ],
);
