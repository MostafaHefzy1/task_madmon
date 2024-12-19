import 'package:madmon/core/util/app_import.dart';

ThemeData getThemeDataLight() => ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.whiteColor,
      appBarTheme: _getAppBarTheme(),
      textTheme: _getTextTheme(),
      inputDecorationTheme: _getInputDecorationTheme(),
      textSelectionTheme: _getTextSelectionTheme(),
      textButtonTheme: _getTextButtonTheme(),
      switchTheme: _getSwitchTheme(),
      checkboxTheme: _getCheckboxTheme(),
      bottomNavigationBarTheme: _getBottomNavigatorBarTheme(),
    );

AppBarTheme _getAppBarTheme() => AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      elevation: AppDouble.zero,
      titleSpacing: AppDouble.twenty.sp,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.whiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      surfaceTintColor: AppColors.transparentColor,
      actionsIconTheme: IconThemeData(
        color: AppColors.blackColor,
        size: AppDouble.twentyFour.h,
      ),
      centerTitle: true,
      toolbarHeight: AppDouble.fifty.h,
      titleTextStyle: TextStyle(
        color: AppColors.foreignColor,
        fontSize: AppDouble.sixteen.sp,
        fontWeight: FontWeight.w500,
      ),
      iconTheme: IconThemeData(
        color: AppColors.blackColor,
        size: AppDouble.twentyFour.h,
      ),
    );

TextTheme _getTextTheme() => TextTheme(
      displayLarge: TextStyle(
        fontSize: AppDouble.fourteen.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.greyColor,
      ),
      displayMedium: TextStyle(
        fontSize: AppDouble.fourteen.sp,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: AppDouble.fourteen.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.blackColor,
      ),
      bodyLarge: TextStyle(
        fontSize: AppDouble.sixteen.sp,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w600,
      ),
      labelMedium: TextStyle(
        fontSize: AppDouble.sixteen.sp,
        color: AppColors.foreignColor,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        fontSize: AppDouble.twelve.sp,
        color: AppColors.greyColor,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: TextStyle(
        fontSize: AppDouble.twelve.sp,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w700,
      ),
      headlineLarge: TextStyle(
        fontSize: AppDouble.fourteen.sp,
        color: AppColors.greyColor,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: TextStyle(
        fontSize: AppDouble.sixteen.sp,
        color: AppColors.redColor,
        fontWeight: FontWeight.w700,
      ),
    );

InputDecorationTheme _getInputDecorationTheme() => InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 1.sw > 600 ? 0.03.sw : 0.05.sw,
        vertical: 1.sw > 600 ? 0.025.sh : 0.013.sh,
      ),
      labelStyle: TextStyle(
        fontSize: AppDouble.fourteen.sp,
      ),
      errorStyle: TextStyle(
        fontSize: AppDouble.fourteen.sp,
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(AppDouble.eight)),
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.blackColor),
          borderRadius: BorderRadius.circular(AppDouble.eight)),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.blackColor),
        borderRadius: BorderRadius.circular(AppDouble.eight),
      ),
    );

TextSelectionThemeData _getTextSelectionTheme() => const TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionHandleColor: AppColors.primaryColor,
    );

TextButtonThemeData _getTextButtonTheme() => TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
      ),
    );

SwitchThemeData _getSwitchTheme() => SwitchThemeData(
      splashRadius: AppDouble.twenty.r,
      thumbColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return AppColors.primaryColor;
        }
        if (states.contains(MaterialState.disabled)) {
          return AppColors.whiteColor;
        }
        return AppColors.whiteColor;
      }),
      trackColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {}
        if (states.contains(MaterialState.disabled)) {
          return AppColors.whiteColor;
        }
        return AppColors.greyColor;
      }),
    );

CheckboxThemeData _getCheckboxTheme() => CheckboxThemeData(
      splashRadius: AppDouble.fifteen.r,
      side: const BorderSide(
        color: AppColors.primaryColor,
        width: AppDouble.two,
      ),
      checkColor: MaterialStateProperty.all(
        AppColors.whiteColor,
      ),
      shape: const CircleBorder(),
      fillColor: MaterialStateProperty.all(
        AppColors.primaryColor,
      ),
    );

BottomNavigationBarThemeData _getBottomNavigatorBarTheme() =>
    BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.greyColor,
      elevation: AppDouble.twenty,
      backgroundColor: AppColors.navBarColorColor,
      selectedLabelStyle: TextStyle(
        fontSize: AppDouble.ten.sp,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: AppDouble.ten.sp,
      ),
    );
