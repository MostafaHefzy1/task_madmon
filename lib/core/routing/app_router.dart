import 'package:madmon/core/util/app_import.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      ///========== Theme and language ==========///
      // case Routes.appLanguageScreen:
      //   return MaterialPageRoute(
      //       builder: (context) => const AppLanguageScreen());

      ///=============== bottom nav bar ===============///

        case Routes.bottomNavBarScreen:
          return MaterialPageRoute(builder: (context) => BottomNavBarScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                      child: Text(
                          "${AppStrings.noRouteDefinedFor.toString()} ${settings.name.toString()}")),
                ));
    }
  }
}
