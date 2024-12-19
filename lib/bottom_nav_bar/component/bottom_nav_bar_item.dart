import '../../../../core/util/app_import.dart';

BottomNavigationBarItem bottomNavBarItem({
  required String icon,
  required String textLabel,
}) =>
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
      ),
      label: textLabel,
      activeIcon: SvgPicture.asset(
        icon,
        color: AppColors.primaryColor,
      ),
    );
