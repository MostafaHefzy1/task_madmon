import 'package:flutter_offline/flutter_offline.dart';
import '../util/app_import.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.scaffold});

  final Widget scaffold;

  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (BuildContext context,
          ConnectivityResult connectivity, Widget child) {
        final bool isConnected = connectivity != ConnectivityResult.none;
        return isConnected
            ? scaffold
            : Scaffold(
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wifi_off_outlined,
                          size: 200.h,
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          AppStrings.noInternet,
                          style: Theme.of(context).textTheme.displayLarge,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              );
      },
      child: const SizedBox(),
    );
  }
}
