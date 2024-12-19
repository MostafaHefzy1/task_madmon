import 'package:madmon/core/util/app_import.dart';

class CustomIconWithText extends StatelessWidget {
  const CustomIconWithText(
      {super.key,
      required this.icon,
      required this.text,
      this.boldText = false,
      this.onTap});

  final String icon, text;
  final bool boldText;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap == null ? null : onTap!(),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            height: boldText ? AppDouble.fifteen.h : null,
            color: AppColors.primaryColor,
          ),
          horizontalSpace(AppDouble.five),
          Text(
            text,
            style: boldText
                ? Theme.of(context).textTheme.headlineMedium
                : Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
