import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: RouteA.page),
        AutoRoute(page: RouteB.page),
        AutoRoute(page: RouteC.page),
        AutoRoute(page: PostsRoute.page),
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: PrivateRoute.page),
      ];
}
