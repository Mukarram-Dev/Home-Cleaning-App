import 'package:cleaningapp/config/theme/colors.dart';
import 'package:flutter/cupertino.dart';

class AppTextStyles {
  static TextStyle textHeading({
    Color color = AppColors.white,
    double fontSize = 28,
    FontWeight fontWeight = FontWeight.w900,
    String fontFamily = 'ubuntu',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }

  static TextStyle textTitle({
    Color color = AppColors.primaryColor,
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.bold,
    String fontFamily = 'ubuntu',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }

  static TextStyle textNormal({
    Color color = AppColors.black,
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.w700,
    String fontFamily = 'ubuntu',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }

  static TextStyle textBody({
    Color color = AppColors.colorText,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    String fontFamily = 'ubuntu',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }

  static TextStyle textBodyItalic({
    Color color = AppColors.colorText,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w600,
    String fontFamily = 'ubuntu',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      fontStyle: FontStyle.italic,
    );
  }

  static TextStyle textLabel({
    Color color = AppColors.white,
    double fontSize = 18,
    FontWeight fontWeight = FontWeight.w400,
    String fontFamily = 'ubuntu',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }

  static TextStyle subheading({
    Color color = AppColors.grey,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    String fontFamily = 'ubuntu',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      fontStyle: FontStyle.italic,
    );
  }

  static TextStyle textCaption({
    Color color = AppColors.colorText,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.w600,
    String fontFamily = 'ubuntu',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }
}
