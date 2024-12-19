import 'package:madmon/core/util/app_import.dart';

class VerticalTextComponent extends StatelessWidget {
  const VerticalTextComponent(
      {super.key,
      required this.topText,
      required this.bottomText,
      this.smallText = false});

  final String topText, bottomText;
  final bool smallText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        verticalSpace(AppDouble.five),
        Text(
          bottomText,
          style: smallText
              ? Theme.of(context).textTheme.titleSmall
              : Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
