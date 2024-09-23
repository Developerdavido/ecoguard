import 'package:ecoguard_project/core/common/widgets/default_text.dart';
import 'package:ecoguard_project/core/res/colors.dart';
import 'package:flutter/material.dart';
class CustomizeButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final double borderRadius;
  final VoidCallback onTap;
  final double fontSize;
  final EdgeInsets padding;
  final double elevation;
  final double? width;
  final double? height;

  const CustomizeButton({
    super.key,
    required this.text,
    required this.onTap,
    this.textColor = AppColors.onPrimaryColor,
    this.backgroundColor = AppColors.primaryColor,
    this.borderColor = Colors.transparent,
    this.borderRadius = 8.0,
    this.fontSize = 14.0,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
    this.elevation = 2.0,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: backgroundColor,     // Text color
        elevation: elevation,
        padding: padding,
        minimumSize: Size(width ?? 0, height ?? 0), // Setting min width and height
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: borderColor),
        ),
      ),
      child: DefaultText(
        text,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: textColor,
      )
    );
  }
}