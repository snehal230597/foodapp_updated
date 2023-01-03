import 'package:flutter/material.dart';

class CommonTextView extends StatelessWidget {
  final String? title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final TextAlign? textAlign;
  final Function? onPress;
  final TextDecoration? textDecoration;
  final TextOverflow? textOverflow;
  final int? maxLine;
  final String? fontFamily;
  final FontStyle? fontStyle;

  const CommonTextView(
      {Key? key,
      this.title,
      this.fontSize,
      this.fontWeight,
      this.fontColor,
      this.textAlign,
      this.onPress,
      this.textDecoration,
      this.textOverflow,
      this.maxLine, this.fontFamily, this.fontStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      maxLines: maxLine,
      textAlign: textAlign,
      style: TextStyle(
        color: fontColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        overflow: textOverflow,
        decoration: textDecoration,
        fontFamily: fontFamily,
        fontStyle: fontStyle
      ),
    );
  }
}
