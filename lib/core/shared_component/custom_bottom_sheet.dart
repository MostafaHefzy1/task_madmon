import '../util/app_import.dart';

void customBottomSheet(
    {required BuildContext context, double? sizedHigh, required Widget child}) {
  showBarModalBottomSheet(
      useRootNavigator: true,
      backgroundColor: AppColors.whiteColor,
      isDismissible: true,
      topControl: Container(),
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppDouble.thirty),
          topRight: Radius.circular(AppDouble.thirty),
        ),
      ),
      builder: (context) {
        return AnimatedPadding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          duration: const Duration(milliseconds: 250),
          child: Container(
            width: double.infinity,
            height: sizedHigh ?? 0.8.sw,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: AppColors.whiteColor,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10.h,
                    ),
                    width: 80.w,
                    height: 6.h,
                    decoration: const BoxDecoration(
                      color: AppColors.lightGreyColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  child
                ],
              ),
            ),
          ),
        );
      });
}
