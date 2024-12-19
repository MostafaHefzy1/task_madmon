import '../util/app_import.dart';

class CustomRangeSlider extends StatelessWidget {
  const CustomRangeSlider({
    super.key,
    required this.onDragging,
    required this.lowerValue,
    required this.upperValue,
  });

  final Function(int, dynamic, dynamic)? onDragging;
  final double lowerValue, upperValue;

  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      rtl: false,
      tooltip: FlutterSliderTooltip(
        custom: (value) => Text(
          "${value.toInt().toString()} M",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        alwaysShowTooltip: true,
        positionOffset: FlutterSliderTooltipPositionOffset(
          top: 40,
        ),

        boxStyle: FlutterSliderTooltipBox(
          decoration: BoxDecoration(
            color: AppColors.transparentColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),

      values: [lowerValue, upperValue],
      min: 0,
      max: 10,
      selectByTap: true,
      rangeSlider: true,
      onDragging: onDragging,
      handler: _buildHandler(),
      rightHandler: _buildHandler(),
      trackBar: FlutterSliderTrackBar(
        activeTrackBarHeight: 10,
        inactiveTrackBarHeight: 10,
        inactiveTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.lightGreyColor,
        ),
        activeTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.selectColor,
        ),
      ),
      handlerHeight: 25.h,
      handlerWidth: 20.w,
    );
  }
}

FlutterSliderHandler _buildHandler() {
  return FlutterSliderHandler(
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: AppColors.selectColor,
    ),
    child: CircleAvatar(
      backgroundColor: AppColors.whiteColor,
      radius: 8.r,
    ),
  );
}
