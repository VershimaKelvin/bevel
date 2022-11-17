import 'package:bevel/app/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrencyTextBase extends StatelessWidget {
  const CurrencyTextBase(
      this.text, {
        this.style,
        this.textAlign = TextAlign.left,
        this.overflow = TextOverflow.visible,
        this.maxLines = 1,
        Key? key,
      }) : super(key: key);
  final String? text;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    assert(text != null, 'test can not be null');
    return Text(
      text ?? '',
      style: GoogleFonts.inter(
        textStyle: const TextStyle(
          fontSize: 14,
          color: AppColors.textColor1,
        ).merge(style),
      ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}

class Heading extends CurrencyTextBase {
  Heading(
      String text, {
        Key? key,
        Color? color,
        TextStyle? style,
        double? fontSize,
        FontWeight fontWeight = FontWeight.w600,
        TextAlign textAlign = TextAlign.left,
        TextOverflow overflow = TextOverflow.visible,
        int maxLines = 3,
      }) : super(
    text,
    key: key,
    overflow: overflow,
    maxLines: maxLines,
    style: TextStyle(
      fontSize: fontSize ?? 24,
      fontWeight: fontWeight,
      color: color ?? AppColors.primaryColor,
    ).merge(style),
    textAlign: textAlign,
  );
}

class TextBody extends CurrencyTextBase {
  TextBody(
      String text, {
        Key? key,
        TextStyle? style,
        Color? color,
        double? fontSize,
        TextAlign textAlign = TextAlign.left,
        FontWeight fontWeight = FontWeight.w400,
        TextOverflow overflow = TextOverflow.visible,
        int maxLines = 2,
        double? height,
      }) : super(
    text,
    key: key,
    overflow: overflow,
    maxLines: maxLines,
    style: TextStyle(
      fontSize: fontSize ?? 16,
      color: color ?? AppColors.textColor1,
      fontWeight: fontWeight,
      height: height,
    ).merge(style),
    textAlign: textAlign,
  );
}

class TextSemiBold extends CurrencyTextBase {
  TextSemiBold(
      String text, {
        Key? key,
        TextStyle? style,
        double? fontSize,
        Color? color,
        FontWeight fontWeight = FontWeight.w600,
        TextAlign textAlign = TextAlign.left,
        TextOverflow overflow = TextOverflow.visible,
        int maxLines = 2,
      }) : super(
    text,
    key: key,
    overflow: overflow,
    maxLines: maxLines,
    style: TextStyle(
      fontSize: fontSize ?? 14,
      color: color ?? AppColors.neutralGray,
      fontWeight: fontWeight,
    ).merge(style),
    textAlign: textAlign,
  );
}

