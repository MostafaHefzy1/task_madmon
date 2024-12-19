import 'package:madmon/core/util/app_import.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemReservationComponent extends StatelessWidget {
  const ItemReservationComponent(
      {super.key,
      required this.state,
      required this.showMoreDetails,
      required this.index});

  final ItemReservationStates state;
  final bool showMoreDetails;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.whiteColor,
      elevation: 1,
      shadowColor: AppColors.borderColor,
      borderRadius: BorderRadius.circular(AppDouble.ten.r),
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(
            vertical: AppDouble.ten.h, horizontal: AppDouble.fifteen.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDouble.ten.r),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///========= location and number and state =====///
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "#131256765444444",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    verticalSpace(AppDouble.four),
                    const CustomIconWithText(
                      icon: AppIcons.locationIcon,
                      text: "Fifth Settlement",
                    ),
                  ],
                ),
                StateComponent(
                  state: state,
                ),
              ],
            ),
            const Divider(
              color: AppColors.dividerColor,
            ),

            ///=========== seller info =========///
            Text(
              AppStrings.sellerInfo,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            verticalSpace(AppDouble.five),
            Text(
              "Abd El-Rahman Ahmed",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            verticalSpace(AppDouble.five),
            CustomIconWithText(
              icon: AppIcons.phoneIcon,
              text: "01122874620",
              onTap: () {
                launchUrl(Uri.parse("tel:01122874620"));
              },
            ),
            const Divider(
              color: AppColors.dividerColor,
            ),

            ///=========== more details =========///
            if (showMoreDetails) ...[
              Text(
                AppStrings.buyerInfo,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              verticalSpace(AppDouble.five),
              Text(
                "Abd El-Rahman Ahmed",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              verticalSpace(AppDouble.five),
              CustomIconWithText(
                icon: AppIcons.phoneIcon,
                text: "01122874620",
                onTap: () {
                  launchUrl(Uri.parse("tel:01122874620"));
                },
              ),
              const Divider(
                color: AppColors.dividerColor,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VerticalTextComponent(
                    topText: AppStrings.unitPrice,
                    bottomText: "150.000.000",
                  ),
                  VerticalTextComponent(
                    topText: AppStrings.commission,
                    bottomText: "150.000.000",
                  ),
                ],
              ),
              const Divider(
                color: AppColors.dividerColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 2,
                    child: VerticalTextComponent(
                      topText: AppStrings.dateReserved,
                      bottomText: "20/3/2024",
                      smallText: true,
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: VerticalTextComponent(
                      topText: AppStrings.lastAction,
                      bottomText: "20/3/2024",
                      smallText: true,
                    ),
                  ),
                  horizontalSpace(AppDouble.one),
                ],
              ),
              const Divider(
                color: AppColors.dividerColor,
              ),
              verticalSpace(AppDouble.five),
              const CustomIconWithText(
                icon: AppIcons.notesIcon,
                text: AppStrings.seeNotes,
                boldText: true,
              ),
              verticalSpace(AppDouble.five),
              const Divider(
                color: AppColors.dividerColor,
              ),
            ],

            ///=========== more details =========///
            GestureDetector(
              onTap: () {
                context.read<ReservationsCubit>().showMoreDetails(index: index);
              },
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.transparentColor,
                ),
                child: Icon(
                  showMoreDetails
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: AppColors.greyColor,
                  size: AppDouble.twentyFour.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
