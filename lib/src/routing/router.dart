import 'package:auto_route/auto_route.dart';

import '../ui/auth/auth_view.dart';
import '../ui/home/home_view.dart';
import '../ui/splash/splash_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: SplashView,
    ),
    AutoRoute(
      path: 'auth',
      page: AuthView,
    ),
    AutoRoute(
      path: 'home',
      page: HomeView,
    ),
  ],
)
class $AppRouter {}
