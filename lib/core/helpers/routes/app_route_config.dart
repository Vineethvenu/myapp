import 'package:go_router/go_router.dart';
import 'app_route_name.dart';
import 'app_route_path.dart';
import 'package:myapp/features/login/view/loginPage.dart';

class AppRoutes {
  final GoRouter router;

  AppRoutes()
      : router = GoRouter(
          initialLocation: RoutesPath.loginPage,
          routes: [
            GoRoute(
              name: RoutesName.login,
              path: RoutesPath.loginPage,
              builder: (context, state) => const LoginPage(),
            ),
            
          ],
        );
}