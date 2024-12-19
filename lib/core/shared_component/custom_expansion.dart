import '../util/app_import.dart';

class CustomExpansion extends StatelessWidget {
  const CustomExpansion(
      {super.key,
      required this.title,
      required this.content});

  final String  title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        dense: true,
        visualDensity: VisualDensity.compact,
        collapsedBackgroundColor: AppColors.lightGreyColor,
        childrenPadding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.h),
        collapsedIconColor: AppColors.blackColor,
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        children: [content],
      ),
    );
  }
}
