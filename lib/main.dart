import 'package:madmon/core/util/app_import.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
    configureDependencies(),
    ScreenUtil.ensureScreenSize(),
  ]);

  Bloc.observer = MyBlocObserver();

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(MyApp(
    appRouter: AppRouter(),
    startRoute: Routes.bottomNavBarScreen,
  ));
}
