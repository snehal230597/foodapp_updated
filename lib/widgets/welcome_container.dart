import 'package:flutter/material.dart';
import 'package:food_app/screens/welcome.dart';

import '../screens/welcome2.dart';
import '../screens/welcome3.dart';

class WelcomeScreenContainer extends StatefulWidget {
  String? title;
  Function()? onTap;
  Color? color1;
  Color? color2;
  Color? color3;

  WelcomeScreenContainer(
      {required this.title,
      required this.onTap,
      this.color1,
      this.color2,
      this.color3,
      Key? key})
      : super(key: key);

  @override
  State<WelcomeScreenContainer> createState() => _WelcomeScreenContainerState();
}

class _WelcomeScreenContainerState extends State<WelcomeScreenContainer> {
  List<dynamic> page = [WelcomeScreen(), WelcomeScreen2(), WelcomeScreen3()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            Color(0xffff461e),
            Color(0xffff1054),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 45, bottom: 45),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Text(
                widget.title!,
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                    fontFamily: "muli",
                    fontStyle: FontStyle.normal,
                    fontSize: 30.0),
              ),
            ),
            SizedBox(height: 20),
            const Text(
                "Reference site about Lorem\n  Ipsum, giving information origins\n as well as a random",
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontFamily: "muli",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0),
                textAlign: TextAlign.center),
            const SizedBox(height: 50),
            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                onPressed: widget.onTap,
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    fontFamily: "muli",
                    fontStyle: FontStyle.normal,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, size: 14, color: widget.color1),
                SizedBox(width: 10),
                Icon(Icons.circle, size: 14, color: widget.color2),
                SizedBox(width: 10),
                Icon(Icons.circle, size: 14, color: widget.color3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
