import 'package:madmon/core/util/app_import.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.title, required this.onTap, required this.isChecked});

  final String title;
  final Function onTap;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsetsDirectional.zero,
        width: double.infinity,
        decoration:  const BoxDecoration(
          color: AppColors.whiteColor,
        ),
        child: Row(
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.foreignColor),
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.all(AppIntegers.one.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppIntegers.five.r),
                shape: BoxShape.rectangle,
                border: Border.all(color: AppColors.selectColor),
              ),
              child: Icon(Icons.check,
                  color: isChecked
                      ? AppColors.selectColor
                      : AppColors.transparentColor,
                  size: AppDouble.eighteen.h),
            ),
          ],
        ),
      ),
    );
  }
}
