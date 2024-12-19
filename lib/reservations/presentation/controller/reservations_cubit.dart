import 'package:madmon/core/util/app_import.dart';

part 'reservations_state.dart';

@injectable
class ReservationsCubit extends Cubit<ReservationsState> {
  ReservationsCubit() : super(const ReservationsState());

  void changeSort({required ReservedStates reservedStates}) {
    emit(state.copyWith(reservedStates: reservedStates));
  }

  void changePrice({required double lowerPrice, required double upperPrice}) {
    emit(state.copyWith(
        selectedLowerPrice: lowerPrice, selectedUpperPrice: upperPrice));
  }

  void changeDate({required DateStates dateStates}) {
    emit(state.copyWith(dateStates: dateStates));
  }

  void changeLocation({required LocationStates locationStates}) {
    emit(state.copyWith(locationStates: locationStates));
  }

  void resetData() {
    emit(state.copyWith(
      reservedStates: ReservedStates.isInitial,
      selectedLowerPrice: AppDouble.one,
      selectedUpperPrice: AppDouble.eight,
      dateStates: DateStates.isInitial,
      locationStates: LocationStates.isInitial,
    ));
  }

  void showMoreDetails({required int index}) {
    List<bool> updatedList = List.from(state.showMoreDetails);

    updatedList[index] = !updatedList[index];

    emit(state.copyWith(showMoreDetails: updatedList));
  }


}
