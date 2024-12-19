import 'package:madmon/core/util/app_import.dart';

class FilterBottomSheetComponent extends StatelessWidget {
  const FilterBottomSheetComponent({super.key, required this.previousContext});

  final BuildContext previousContext;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: previousContext.read<ReservationsCubit>(),
      child: WillPopScope(
        onWillPop: () async {
          previousContext.read<ReservationsCubit>().resetData();
          return true;
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsetsDirectional.only(
                start: AppIntegers.twenty.r,
                top: AppIntegers.five.r,
                // end: AppIntegers.twenty.r,
              ),
              child: Text(
                AppStrings.filterBy,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            verticalSpace(AppDouble.twenty),
            const StatusComponent(),
            verticalSpace(AppDouble.twenty),
            const LocationComponent(),
            verticalSpace(AppDouble.twenty),
            const PriceComponent(),
            verticalSpace(AppDouble.twenty),
            const ShowResultBottomComponent(),
            verticalSpace(AppDouble.twenty),
            const TextResetAllComponent(),
            verticalSpace(AppDouble.twenty),
          ],
        ),
      ),
    );
  }
}
