import 'package:bevel/core/navigators/route_names.dart';
import 'package:bevel/features/home/home_screen.dart';
import 'package:bevel/features/home/test_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.homeScreen:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: const HomeScreen(),
      );

    case Routes.test:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: const TestScreen(),
      );

    default:
      return MaterialPageRoute<void>(
        builder: (_) => Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${settings.name}',
            ),
          ),
        ),
      );
  }
}

PageRoute _getPageRoute({String? routeName, Widget? viewToShow}) {
  return MaterialPageRoute<void>(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow!,
  );
}
