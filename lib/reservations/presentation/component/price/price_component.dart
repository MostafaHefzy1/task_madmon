import 'package:madmon/core/util/app_import.dart';

class PriceComponent extends StatelessWidget {
  const PriceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationsCubit, ReservationsState>(
      buildWhen: (previous, current) =>
          previous.selectedLowerPrice != current.selectedLowerPrice ||
          previous.selectedUpperPrice != current.selectedUpperPrice,
      builder: (context, state) {
        return CustomExpansion(
          title: AppStrings.price,
          content: CustomRangeSlider(
            lowerValue: state.selectedLowerPrice,
            upperValue: state.selectedUpperPrice,
            onDragging: (_, lowerValue, upperValue) {
              context.read<ReservationsCubit>().changePrice(
                    lowerPrice: lowerValue,
                    upperPrice: upperValue,
                  );
            },
          ),
        );
      },
    );
  }
}
