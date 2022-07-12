import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_app/presentation/resources/color_manager.dart';
import 'package:tut_app/presentation/resources/font_manager.dart';
import 'package:tut_app/presentation/resources/styles_manager.dart';
import 'package:tut_app/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    /// main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,

    /// card theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4.h),

    /// app bar theme
    appBarTheme: AppBarTheme(
      color: ColorManager.primary,
      centerTitle: true,
      elevation: AppSize.s4.h,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16.sp),
    ),

    /// button theme
    buttonTheme: ButtonThemeData(
        disabledColor: ColorManager.grey1,
        splashColor: ColorManager.lightPrimary,
        buttonColor: ColorManager.primary,
        shape: const StadiumBorder()),

    /// elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(
              color: ColorManager.white, fontSize: FontSize.s17.sp),
          primary: ColorManager.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s12.h))),
    ),

    /// text theme
    textTheme: TextTheme(
        displayLarge:
            getLightStyle(color: ColorManager.white, fontSize: FontSize.s22.sp),
        headline1: getSemiBoldStyle(
            color: ColorManager.darkGrey, fontSize: FontSize.s16.sp),
        subtitle1: getMediumStyle(
            color: ColorManager.lightGrey, fontSize: FontSize.s14.sp),
        caption: getRegularStyle(color: ColorManager.grey1),
        bodyText1: getRegularStyle(color: ColorManager.grey)),

    /// input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p8.h),
      hintStyle:
          getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14.sp),
      labelStyle:
          getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14.sp),
      errorStyle: getRegularStyle(color: ColorManager.error),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8.h)),
        borderSide:
            BorderSide(width: AppSize.s1_5.w, color: ColorManager.primary),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8.h)),
        borderSide: BorderSide(width: AppSize.s1_5.w, color: ColorManager.grey),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8.h)),
        borderSide:
            BorderSide(width: AppSize.s1_5.w, color: ColorManager.error),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8.h)),
        borderSide:
            BorderSide(width: AppSize.s1_5.w, color: ColorManager.primary),
      ),
    ),
  );
}
