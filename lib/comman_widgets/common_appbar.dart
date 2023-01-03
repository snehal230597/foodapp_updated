import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CommonAppbar extends StatelessWidget {
  final String? title;
  final Color? shadowColor;
  final Color? fontColor;
  final Color? backgroundColor;
  final bool? isBackEnable;
  final bool? centerTitle;
  final double? elevation;
  final IconThemeData? iconTheme;
  final FontWeight? fontWeight;

  const CommonAppbar(
      {Key? key,
      this.title,
      this.shadowColor,
      this.isBackEnable,
      this.centerTitle,
      this.fontColor,
      this.backgroundColor,
      this.elevation,
      this.iconTheme,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: AppBar(
        title: Text(
          title!,
          style: TextStyle(color: fontColor),
        ),
        centerTitle: centerTitle,
        shadowColor: shadowColor,
        backgroundColor: Colors.white,
        elevation: shadowColor == null ? 0 : 2,
        leading: isBackEnable == null
            ? Container()
            : IconButton(
                onPressed: () {
                  Utils.routsfunction(context, Container(), "back");
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
