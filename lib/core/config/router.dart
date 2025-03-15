import 'package:go_router/go_router.dart';
import 'package:weather_app_task/features/weather_page/views/view/search_page.dart';
import 'package:weather_app_task/features/weather_page/weather_router.dart';

abstract class Rout {
  /// root route of the app that manages all the routes of the app.
  static final router = GoRouter(
    routes: [
      /// search page route
      GoRoute(path: '/', builder: (context, state) => const SearchPage()),

      /// weather page route
      ...WeatherRouter.goRoutes,
    ],
  );
}
