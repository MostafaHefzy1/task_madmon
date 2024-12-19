import 'package:madmon/core/util/app_import.dart';

class ShowResultBottomComponent extends StatelessWidget {
  const ShowResultBottomComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationsCubit, ReservationsState>(
      buildWhen: (previous, current) =>
          previous.selectedUpperPrice != current.selectedUpperPrice ||
          previous.selectedLowerPrice != current.selectedLowerPrice ||
          previous.reservedStates != current.reservedStates ||
          previous.dateStates != current.dateStates,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: AppDouble.twenty.w,
          ),
          child: CustomMaterialButton(
            function: () {
              context.pop();
              context.read<ReservationsCubit>().resetData();
            },
            text: AppStrings.showResults,
          ),
        );
      },
    );
  }
}
