import 'package:madmon/core/util/app_import.dart';

class DateComponent extends StatelessWidget {
  const DateComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationsCubit, ReservationsState>(
      buildWhen: (previous, current) =>
          previous.dateStates != current.dateStates,
      builder: (context, state) {
        return CustomExpansion(
          title: AppStrings.date,
          content: Column(
            children: [
              CustomCheckBox(
                title: AppStrings.newest,
                isChecked: state.dateStates == DateStates.newest,
                onTap: () {
                  context
                      .read<ReservationsCubit>()
                      .changeDate(dateStates: DateStates.newest);
                },
              ),
              verticalSpace(AppDouble.ten),
              CustomCheckBox(
                title: AppStrings.oldest,
                isChecked: state.dateStates == DateStates.oldest,
                onTap: () {
                  context
                      .read<ReservationsCubit>()
                      .changeDate(dateStates: DateStates.oldest);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
