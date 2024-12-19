// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../bottom_nav_bar/controller/bottom_nav_bar_cubit.dart' as _i256;
import '../../reservations/presentation/controller/reservations_cubit.dart'
    as _i918;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i256.BottomNavBarCubit>(() => _i256.BottomNavBarCubit());
    gh.factory<_i918.ReservationsCubit>(() => _i918.ReservationsCubit());
    return this;
  }
}
