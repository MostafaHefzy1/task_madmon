import 'package:madmon/core/util/app_import.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(AppIntegers.ten.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppIntegers.ten.r),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(AppStrings.search,
              style: Theme.of(context).textTheme.displayLarge),
          SvgPicture.asset(
            AppIcons.searchIcon,
          ),
        ],
      ),
    );
  }
}
