import '../util/app_import.dart';

class CustomMaterialButton extends StatelessWidget {
  final double? width;
  final Function function;
  final String? text;
  final double? radius;
  final Color materialColor;

  final Color textColor;

  const CustomMaterialButton({
    super.key,
    required this.function,
    required this.text,
    this.width = double.infinity,
    this.radius = 10,
    this.textColor = AppColors.whiteColor,
    this.materialColor = AppColors.selectColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: materialColor,
        borderRadius: BorderRadius.circular(
          radius!.r,
        ),
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(text.toString(),
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: textColor,
                )),
      ),
    );
  }
}
