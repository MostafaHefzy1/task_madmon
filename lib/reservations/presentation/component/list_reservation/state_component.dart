import 'package:madmon/core/util/app_import.dart';

class StateComponent extends StatelessWidget {
  const StateComponent({super.key, required this.state});

  final ItemReservationStates state;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDouble.oneHundredAndTwentyFive.w,
      padding: EdgeInsetsDirectional.symmetric(
        vertical: AppDouble.four.h,
      ),
      decoration: BoxDecoration(
        color: _getBackgroundColor(state),
        borderRadius: BorderRadius.circular(AppDouble.five),
        border: Border.all(
          color: _getBorderColor(state),
        ),
      ),
      child: Text(
        _getStateText(state),
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: _getTextColor(state),
              fontWeight: FontWeight.w400,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color _getBackgroundColor(ItemReservationStates state) {
    switch (state) {
      case ItemReservationStates.newState:
        return AppColors.whiteColor;
      case ItemReservationStates.contractSigned:
        return AppColors.greenColor;
      default:
        return AppColors.redColor;
    }
  }

  Color _getBorderColor(ItemReservationStates state) {
    switch (state) {
      case ItemReservationStates.newState:
        return AppColors.primaryColor;
      case ItemReservationStates.contractSigned:
        return AppColors.greenColor;
      default:
        return AppColors.redColor;
    }
  }

  String _getStateText(ItemReservationStates state) {
    switch (state) {
      case ItemReservationStates.newState:
        return AppStrings.newText;
      case ItemReservationStates.contractSigned:
        return AppStrings.contractSigned;
      default:
        return AppStrings.noAnswer;
    }
  }
}

Color _getTextColor(ItemReservationStates state) {
  switch (state) {
    case ItemReservationStates.newState:
      return AppColors.primaryColor;

    default:
      return AppColors.whiteColor;
  }
}
