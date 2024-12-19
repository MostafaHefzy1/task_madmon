import 'package:madmon/core/util/app_import.dart';

class ReservationsScreen extends StatelessWidget {
  const ReservationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ReservationsCubit>(),
      child: Scaffold(
        appBar: const AppBarReservationsComponent(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsetsDirectional.all(AppIntegers.fifteen.r),
          child: Column(
            children: [
              const BottomHeaderComponent(),
              verticalSpace(AppDouble.twenty),
              const ListReservationComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
