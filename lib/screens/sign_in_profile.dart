import 'package:flutter/material.dart';
import 'package:food_app/comman_widgets/comman_button.dart';
import 'package:food_app/screens/forget_password1.dart';
import 'package:food_app/screens/navigation_screen.dart';
import 'package:food_app/screens/sign_up2.dart';
import 'package:food_app/utils/util_colors.dart';
import 'package:sizer/sizer.dart';

import '../comman_widgets/common_appbar.dart';
import '../utils/utils.dart';

class SignInProfile extends StatefulWidget {
  const SignInProfile({Key? key}) : super(key: key);

  @override
  State<SignInProfile> createState() => _SignInProfileState();
}

class _SignInProfileState extends State<SignInProfile> {
  bool valueFirst = false;

  final List<FocusNode> _focusNodes = [
    FocusNode(),
  ];
  final List<FocusNode> _focusNodes1 = [
    FocusNode(),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: CommonAppbar(
            fontColor: Colors.black,
            centerTitle: true,
            title: 'Sign In',
            fontFamily: "muli",
            backgroundColor: Colors.white,
            shadowColor: Colors.white,
            iconTheme:  IconThemeData(color: Colors.black),
            fontWeight: FontWeight.w700,
            rPadding: 5,
            lIcon: IconButton(
              onPressed: () {
                Utils.routsfunction(context, Container(), "back");
              },
              icon:  Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            istrailingIcon: false,
            isBackEnable: true),
        // AppBar(
        //   elevation: 0.5,
        //   backgroundColor: Colors.white,
        //   centerTitle: true,
        //   iconTheme: const IconThemeData(color: Colors.black),
        //   leading: IconButton(
        //       onPressed: () {
        //         Navigator.of(context).pop();
        //       },
        //       icon: const Icon(Icons.arrow_back_ios)),
        //   title: const Text(
        //     'Sign In',
        //     style: TextStyle(
        //       color: Colors.black,
        //       fontFamily: "muli",
        //       fontStyle: FontStyle.normal,
        //       fontWeight: FontWeight.w700,
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 70,
                    child: ClipRRect(
                      child: Image.asset('assets/images/sp.jpeg'),
                      borderRadius: BorderRadius.circular(70.0),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                const Text(
                  "Welcome Back Snehal",
                  style: TextStyle(
                      color: Color(0xffff2e36),
                      fontWeight: FontWeight.w600,
                      fontFamily: "muli",
                      fontStyle: FontStyle.normal,
                      fontSize: 22.0),
                ),
                SizedBox(height: 10),
                const Text(
                  "Sign in to continue",
                  style: TextStyle(
                      color: Color(0xff262b2e),
                      fontWeight: FontWeight.w400,
                      fontFamily: "muli",
                      fontStyle: FontStyle.normal,
                      fontSize: 18.0),
                ),
                SizedBox(height: 70),
                TextFormField(
                  onTap: () {
                    setState(() {
                      _focusNodes.forEach((node) {
                        node.addListener(() {});
                      });
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter email id";
                    } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return "Enter a valid email id";
                    }
                    return null;
                  },
                  cursorColor: Colors.black,
                  focusNode: _focusNodes[0],
                  decoration: InputDecoration(
                    fillColor: Color(0xfff4f5f7),
                    filled: true,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.mail,
                      size: 30,
                      color: _focusNodes[0].hasFocus
                          ? Color(0xffFF2E36)
                          : Colors.grey,
                    ),
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                        fontSize: 15,
                        height: 4 / 5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onTap: () {
                    setState(() {
                      _focusNodes1.forEach((node) {
                        node.addListener(() {});
                      });
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter password";
                    }
                    return null;
                  },
                  obscureText: true,
                  focusNode: _focusNodes1[0],
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    fillColor: Color(0xfff4f5f7),
                    filled: true,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 30,
                      //  color: Colors.grey,
                      color: _focusNodes1[0].hasFocus
                          ? Color(0xffFF2E36)
                          : Colors.grey,
                    ),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                        fontSize: 15,
                        height: 4 / 5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Checkbox(
                              checkColor: Colors.white,
                              activeColor: const Color(0xffFF2E36),
                              value: valueFirst,
                              onChanged: (bool? value) {
                                setState(() {
                                  valueFirst = value!;
                                });
                              },
                            ),
                          ),
                        ),
                        const Text(
                          "Remember me",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                              fontFamily: "muli",
                              fontStyle: FontStyle.normal,
                              fontSize: 15.0),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ForgetPassword1()));
                          },
                          child: const Text(
                            "Forget password ?",
                            style: TextStyle(
                                color: Color(0xffff2e36),
                                fontFamily: "muli",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 40),
                CommonButtonView(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => NavigationScreen(),
                      ),
                    );
                  },
                  height: 6.2.h,
                  width: 100.w,
                  title: 'Sign In',
                  fontColor: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  fontFamily: "muli",
                  fontStyle: FontStyle.normal,
                  gradianClist: [redGradiant1,redGradiant2],
                  isGradient: true,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: "muli",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0),
                    ),
                    SizedBox(width: 6),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => SignUpScreen2()));
                      },
                      child: const Text(
                        "Sign up!",
                        style: TextStyle(
                            color: Color(0xffff2e36),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
