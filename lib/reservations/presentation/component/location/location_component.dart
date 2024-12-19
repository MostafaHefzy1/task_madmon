import 'package:madmon/core/util/app_import.dart';

class LocationComponent extends StatelessWidget {
  const LocationComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationsCubit, ReservationsState>(
      buildWhen: (previous, current) =>
          previous.locationStates != current.locationStates,
      builder: (context, state) {
        return CustomExpansion(
          title: AppStrings.location,
          content: Column(
            children: [
              CustomCheckBox(
                title: AppStrings.cairo,
                isChecked: state.locationStates == LocationStates.cairo,
                onTap: () {
                  context
                      .read<ReservationsCubit>()
                      .changeLocation(locationStates: LocationStates.cairo);
                },
              ),
              verticalSpace(AppDouble.ten),
              CustomCheckBox(
                title: AppStrings.nasrCity,
                isChecked: state.locationStates == LocationStates.nasrCity,
                onTap: () {
                  context
                      .read<ReservationsCubit>()
                      .changeLocation(locationStates: LocationStates.nasrCity);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
