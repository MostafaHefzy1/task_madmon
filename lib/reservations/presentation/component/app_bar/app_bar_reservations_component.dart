import 'package:madmon/core/util/app_import.dart';

class AppBarReservationsComponent extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarReservationsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Row(
        children: [
          horizontalSpace(AppDouble.ten),
          SvgPicture.asset(
            AppIcons.menuIcon,
          ),
        ],
      ),
      title: const Text(AppStrings.reservations),
      actions: [
        SvgPicture.asset(
          AppIcons.notificationIcon,
        ),
        horizontalSpace(AppDouble.ten),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
