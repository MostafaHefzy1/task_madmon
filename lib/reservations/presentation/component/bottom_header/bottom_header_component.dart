import 'package:madmon/core/util/app_import.dart';

class BottomHeaderComponent extends StatelessWidget {
  const BottomHeaderComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SearchComponent()),
        horizontalSpace(AppDouble.five),
        ItemBottomHeaderComponent(
            icon: AppIcons.sortIcon,
            onTap: () {
              customBottomSheet(
                context: context,
                sizedHigh: 0.5.sh,
                child: SortBottomSheetComponent(
                  previousContext: context,
                ),
              );
            }),
        horizontalSpace(AppDouble.five),
        ItemBottomHeaderComponent(
            icon: AppIcons.filterIcon,
            onTap: () {
              customBottomSheet(
                context: context,
                sizedHigh: 0.5.sh,
                child: FilterBottomSheetComponent(
                  previousContext: context,
                ),
              );
            })
      ],
    );
  }
}
