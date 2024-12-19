import 'package:madmon/core/util/app_import.dart';

part 'bottom_nav_bar_state.dart';

@injectable
class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(const BottomNavBarState());

  void changeBottomNavBar({required int index}) {
    emit(BottomNavBarState(currentIndex: index));
  }
}
