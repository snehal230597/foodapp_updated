import 'package:flutter/material.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget{
  final String? title;
  final String? fontFamily;
  final Color? shadowColor;
  final Color? fontColor;
  final Color? backgroundColor;
  final double? rPadding;
  final double? elevation;
  final Widget? tIcon;
  final Widget? lIcon;
  final bool? istrailingIcon;
  final bool? isBackEnable;
  final bool? centerTitle;
  final IconThemeData? iconTheme;
  final FontWeight? fontWeight;

  CommonAppbar({
    Key? key,
    this.title,
    this.shadowColor,
    this.isBackEnable,
    this.centerTitle,
    this.fontColor,
    this.backgroundColor,
    this.elevation,
    this.iconTheme,
    this.fontWeight,
    this.rPadding,
    this.tIcon,
    this.lIcon,
    this.istrailingIcon,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(55),
      child: AppBar(
        titleSpacing: 10,
        title: Text(
          title!,
          style: TextStyle(
              color: fontColor, fontWeight: fontWeight, fontFamily: fontFamily),
        ),
        centerTitle: centerTitle,
        shadowColor: shadowColor,
        iconTheme: iconTheme,
        backgroundColor: backgroundColor,
        elevation: shadowColor == null ? 0 : 0.5,
        leading: isBackEnable == null ? Container() : lIcon,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: rPadding!),
            child: istrailingIcon == null ? Container() : tIcon,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
