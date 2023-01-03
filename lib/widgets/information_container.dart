import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InformationContainer extends StatefulWidget {
  @override
  State<InformationContainer> createState() => _InformationContainerState();
}

class _InformationContainerState extends State<InformationContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 10),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        height: 35,
                        width: 35,
                        child: SvgPicture.asset('assets/images/iphone.svg')),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Phone :",
                        style: const TextStyle(
                            color: const Color(0xff262b2e),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
                Text(
                  "+8801721666763",
                  style: const TextStyle(
                      color: const Color(0xff262b2e),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 35,
                          width: 35,
                          child: SvgPicture.asset('assets/images/imail.svg')),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Email :",
                          style: const TextStyle(
                              color: const Color(0xff262b2e),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "tauhid.aap@gmail.com",
                    style: const TextStyle(
                        color: const Color(0xff262b2e),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 35,
                          width: 35,
                          child: SvgPicture.asset('assets/images/ialram.svg')),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Cuisines :",
                          style: const TextStyle(
                              color: const Color(0xff262b2e),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Indian",
                    style: const TextStyle(
                        color: const Color(0xff262b2e),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 35,
                          width: 35,
                          child: SvgPicture.asset('assets/images/iwallet.svg')),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Average Cost :",
                          style: const TextStyle(
                              color: const Color(0xff262b2e),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "₹100-₹500",
                    style: const TextStyle(
                        color: const Color(0xff262b2e),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 35,
                          width: 35,
                          child:
                              SvgPicture.asset('assets/images/ilocation.svg')),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Address :",
                          style: const TextStyle(
                              color: const Color(0xff262b2e),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "70th Street. 80 R 20th St, RU",
                    style: const TextStyle(
                        color: const Color(0xff262b2e),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 35,
                          width: 35,
                          child: SvgPicture.asset('assets/images/iclock.svg')),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Opening Time :",
                          style: const TextStyle(
                              color: const Color(0xff262b2e),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Open 10:00 - 05:00",
                    style: const TextStyle(
                        color: const Color(0xff262b2e),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
