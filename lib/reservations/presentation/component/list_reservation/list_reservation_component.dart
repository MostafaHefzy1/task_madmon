import 'package:madmon/core/util/app_import.dart';

class ListReservationComponent extends StatelessWidget {
  const ListReservationComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationsCubit, ReservationsState>(
      buildWhen: (previous, current) =>
          previous.showMoreDetails != current.showMoreDetails,
      builder: (context, state) {
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => ItemReservationComponent(
            state: index == 0
                ? ItemReservationStates.newState
                : index == 1
                    ? ItemReservationStates.contractSigned
                    : ItemReservationStates.noAnswer,
            showMoreDetails: state.showMoreDetails[index],
            index: index,
          ),
          separatorBuilder: (context, index) => verticalSpace(AppDouble.ten),
          itemCount: 3,
        );
      },
    );
  }
}
