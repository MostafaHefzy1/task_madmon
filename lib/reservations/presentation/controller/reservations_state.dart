part of 'reservations_cubit.dart';

class ReservationsState extends Equatable {
  final ReservedStates reservedStates;
  final double selectedLowerPrice;
  final double selectedUpperPrice;
  final DateStates dateStates;
  final LocationStates locationStates;

  final List<bool> showMoreDetails;

  const ReservationsState({
    this.reservedStates = ReservedStates.isInitial,
    this.selectedLowerPrice = AppDouble.one,
    this.selectedUpperPrice = AppDouble.eight,
    this.dateStates = DateStates.isInitial,
    this.locationStates = LocationStates.isInitial,
    this.showMoreDetails = const [false, false, false],
  });

  ReservationsState copyWith(
      {ReservedStates? reservedStates,
      double? selectedLowerPrice,
      double? selectedUpperPrice,
      DateStates? dateStates,
      LocationStates? locationStates,
      List<bool>? showMoreDetails}) {
    return ReservationsState(
        reservedStates: reservedStates ?? this.reservedStates,
        selectedLowerPrice: selectedLowerPrice ?? this.selectedLowerPrice,
        selectedUpperPrice: selectedUpperPrice ?? this.selectedUpperPrice,
        dateStates: dateStates ?? this.dateStates,
        locationStates: locationStates ?? this.locationStates,
        showMoreDetails: showMoreDetails ?? this.showMoreDetails);
  }

  @override
  List<Object> get props => [
        reservedStates,
        selectedLowerPrice,
        selectedUpperPrice,
        dateStates,
        locationStates,
        showMoreDetails,
      ];
}
