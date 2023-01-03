import 'package:flutter/material.dart';

class CommonTextFiled extends StatelessWidget {
  final double? weight;
  final double? height;
  final bool? isPrefix;
  final String? prefText;
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController controller;
  final int? inputMaxLength;
  final int? minLineIn;
  final TextInputAction? textInputAction;
  final bool? issuxif;
  final Function? prefIconClick;
  final bool? secureText;
  final Function? suffixIconPress;
  final bool? isReadOnly;
  final Function(String)? onChangeTextFiled;

  const CommonTextFiled({
    Key? key,
    this.weight,
    this.height,
    this.isPrefix,
    this.prefText,
    required this.hintText,
    required this.textInputType,
    required this.controller,
    this.inputMaxLength,
    this.minLineIn,
    this.textInputAction,
    this.issuxif,
    this.prefIconClick,
    this.secureText,
    this.suffixIconPress,
    this.isReadOnly,
    this.onChangeTextFiled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: issuxif == true ? secureText! : false,
      readOnly: isReadOnly == null ? false : true,
      controller: controller,
      keyboardType: textInputType,
      maxLength: inputMaxLength,
      minLines: minLineIn == null ? 1 : minLineIn,
      maxLines: minLineIn == null ? 1 : minLineIn,
      textInputAction: textInputAction,
      onChanged: (value) {
        onChangeTextFiled!(value);
      },
      decoration: issuxif == true
          ? InputDecoration(
              border: InputBorder.none,
              counterText: "",
              hintText: hintText,
              suffixIcon: IconButton(
                icon: Icon(secureText == true
                    ? Icons.remove_red_eye_outlined
                    : Icons.remove_red_eye),
                color: const Color(0xff9B9B9B),
                onPressed: () {
                  suffixIconPress!();
                },
              ),
              hintStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.3,
                  color: Colors.grey))
          : InputDecoration(
              border: InputBorder.none,
              counterText: "",
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
            ),
    );
  }
}
