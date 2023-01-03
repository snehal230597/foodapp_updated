import 'package:flutter/material.dart';
import 'package:food_app/comman_widgets/common_textview.dart';

class CommonButtonView extends StatelessWidget {
  final Color? backgroundColor;

  final Color? borderColor;
  final double? height;
  final double? borderRadius;
  final double? width;
  final bool? iconButton;
  final Function? onPressed;
  final Widget? child;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final String? title;
  final String? fontFamily;
  final FontStyle? fontStyle;
  final List<Color>? gradianClist;
  final bool? isGradient;


  const CommonButtonView({
    Key? key,
    this.backgroundColor,
    this.borderColor,
    this.height,
    this.width,
    this.iconButton,
    this.onPressed,
    this.child,
    this.title,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
    this.gradianClist,
    this.fontStyle,
    this.isGradient, this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onPressed!();
        },
        child: Container(
          height: height,
          width: width,
          // color: fontColor,
          decoration: isGradient!
              ? BoxDecoration(
                  gradient: LinearGradient(
                      begin:  const Alignment(0.5, 0),
                      end: const Alignment(0.5, 1),
                      colors: gradianClist!),
                  borderRadius: BorderRadius.circular(10),
                )
              : BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(borderRadius!),
                ),
          child: Center(
            child: CommonTextView(
              title: title,
              fontColor: fontColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontFamily: fontFamily,
              fontStyle: fontStyle,
            ),
          ),
        ));
  }
}
