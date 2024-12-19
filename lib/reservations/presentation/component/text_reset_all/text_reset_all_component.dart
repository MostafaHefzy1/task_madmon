import 'package:madmon/core/util/app_import.dart';

class TextResetAllComponent extends StatelessWidget {
  const TextResetAllComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationsCubit, ReservationsState>(
      buildWhen: (previous, current) =>
          previous.selectedUpperPrice != current.selectedUpperPrice ||
          previous.selectedLowerPrice != current.selectedLowerPrice ||
          previous.reservedStates != current.reservedStates ||
          previous.dateStates != current.dateStates,
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<ReservationsCubit>().resetData();
          },
          child: Align(
            alignment: Alignment.center,
            child: Text(
              AppStrings.resetAll,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.foreignColor),
            ),
          ),
        );
      },
    );
  }
}
