import '../../../../core/util/app_import.dart';

class BottomNavBarScreen extends StatelessWidget {
  BottomNavBarScreen({super.key});

  final List<Widget> screens = [
    const HomeScreen(),
    const LeadsScreen(),
    const UnitsScreen(),
    const ReservationsScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: CustomScaffold(
        scaffold: BlocProvider(
          create: (context) => sl<BottomNavBarCubit>(),
          child: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
            buildWhen: (previous, current) =>
                previous.currentIndex != current.currentIndex,
            builder: (context, state) {
              return Scaffold(
                resizeToAvoidBottomInset: false,
                body: screens[state.currentIndex],
                bottomNavigationBar: ClipRRect(
                  borderRadius: BorderRadius.circular(AppDouble.sixty.r),
                  clipBehavior: Clip.antiAlias,
                  child: BottomNavigationBar(
                    currentIndex: state.currentIndex,
                    onTap: (int index) {
                      context
                          .read<BottomNavBarCubit>()
                          .changeBottomNavBar(index: index);
                    },
                    items: [
                      bottomNavBarItem(
                        icon: AppIcons.homeIcon,
                        textLabel: AppStrings.home,
                      ),
                      bottomNavBarItem(
                        icon: AppIcons.leadsIcon,
                        textLabel: AppStrings.leads,
                      ),
                      bottomNavBarItem(
                        icon: AppIcons.unitsIcon,
                        textLabel: AppStrings.units,
                      ),
                      bottomNavBarItem(
                        icon: AppIcons.reservationsIcon,
                        textLabel: AppStrings.reservations,
                      ),
                      bottomNavBarItem(
                        icon: AppIcons.accountIcon,
                        textLabel: AppStrings.account,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
