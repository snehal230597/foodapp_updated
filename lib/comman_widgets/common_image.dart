import 'package:flutter/material.dart';

class CommonImageView extends StatelessWidget {
  final String? imageUrl;
  final double? height;
  final double? width;
  final BoxFit? boxFit;

  const CommonImageView(
      {Key? key, this.height, this.width, this.boxFit, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(imageUrl!, height: height, width: width, fit: boxFit);
  }
}
