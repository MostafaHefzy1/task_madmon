import 'package:madmon/core/util/app_import.dart';

class ItemBottomHeaderComponent extends StatelessWidget {
  const ItemBottomHeaderComponent({super.key, required this.icon, required this.onTap});

  final String icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsetsDirectional.all(AppIntegers.ten.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppIntegers.ten.r),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: SvgPicture.asset(
          icon,
        ),
      ),
    );
  }
}
