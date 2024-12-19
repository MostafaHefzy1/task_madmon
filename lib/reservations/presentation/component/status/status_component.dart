import 'package:madmon/core/util/app_import.dart';

class StatusComponent extends StatelessWidget {
  const StatusComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationsCubit, ReservationsState>(
      buildWhen: (previous, current) =>
          previous.reservedStates != current.reservedStates,
      builder: (context, state) {
        return CustomExpansion(
          title: AppStrings.status,
          content: Column(
            children: [
              CustomCheckBox(
                title: AppStrings.reserved,
                isChecked: state.reservedStates == ReservedStates.reserved,
                onTap: () {
                  context
                      .read<ReservationsCubit>()
                      .changeSort(reservedStates: ReservedStates.reserved);
                },
              ),
              verticalSpace(AppDouble.ten),
              CustomCheckBox(
                title: AppStrings.notReserved,
                isChecked: state.reservedStates == ReservedStates.notReserved,
                onTap: () {
                  context
                      .read<ReservationsCubit>()
                      .changeSort(reservedStates: ReservedStates.notReserved);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
