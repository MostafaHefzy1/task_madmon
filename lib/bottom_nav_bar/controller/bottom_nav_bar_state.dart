part of 'bottom_nav_bar_cubit.dart';

class BottomNavBarState extends Equatable {
  final int currentIndex;

  const BottomNavBarState({this.currentIndex = AppIntegers.zero});

  @override
  List<Object> get props => [currentIndex];
}
