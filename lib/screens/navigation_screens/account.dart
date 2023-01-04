import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/screens/splash_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../comman_widgets/common_appbar.dart';
import '../../utils/utils.dart';

class AccountScreen extends StatelessWidget {
  static final CameraPosition _kGooglePlex = const CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 14.4746);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: CommonAppbar(
            fontColor: Colors.black,
            centerTitle: true,
            title: 'Account',
            backgroundColor: Colors.white,
            shadowColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
            fontWeight: FontWeight.w700,
            rPadding: 5,
            lIcon: IconButton(
              onPressed: () {
                Utils.routsfunction(context, Container(), "back");
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            istrailingIcon: false,
            isBackEnable: true),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          radius: 35,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                  'https://www.pinkvilla.com/files/styles/amp_metadata_content_image_min_696px_wide/public/tom_cruise_calls_security_on_mission_impossible_7_sets.jpeg?itok=4OPqhWIz')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Snehal Prajapati",
                              style: TextStyle(
                                  color: Color(0xffff2e36),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "+91 7698062066",
                                style: TextStyle(
                                    color: Color(0xff8a8d9f),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/adollar.svg'),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Membership points",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "100 pts",
                                style: TextStyle(
                                    color: Color(0xffff2e36),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                    size: 18,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: DottedLine(
                  dashColor: Color(0xff181818).withOpacity(0.1),
                  lineThickness: 2.5,
                  dashLength: 6),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/alocation.svg'),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Choose another store",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "Pick Your Store",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 18,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: DottedLine(
                  dashColor: Color(0xff181818).withOpacity(0.1),
                  lineThickness: 2.5,
                  dashLength: 6),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) =>
                        GoogleMap(initialCameraPosition: _kGooglePlex),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/aredlocation.svg'),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "My Address",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "Manage delivery address",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                    size: 18,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: DottedLine(
                  dashColor: Color(0xff181818).withOpacity(0.1),
                  lineThickness: 2.5,
                  dashLength: 6),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/ahand.svg'),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "About Use",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "Terms of use",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 18,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: DottedLine(
                  dashColor: Color(0xff181818).withOpacity(0.1),
                  lineThickness: 2.5,
                  dashLength: 6),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/aearth.svg'),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Languages",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "English",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 18,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: DottedLine(
                  dashColor: Color(0xff181818).withOpacity(0.1),
                  lineThickness: 2.5,
                  dashLength: 6),
            ),
            InkWell(
              onTap: () {
                showAlertDialog(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/aback.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Logout",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                    size: 18,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: DottedLine(
                  dashColor: Color(0xff181818).withOpacity(0.1),
                  lineThickness: 2.5,
                  dashLength: 6),
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    content: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Text(
              "        Are you sure  \n  you want to sign out?",
              style: TextStyle(
                  color: Color(0xff262b2e),
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: const Color(0xfffe2121).withOpacity(0.1)),
                      child: const Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              color: Color(0xfffe2121),
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => SplashScreen()));
                    },
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [
                                Color(0xffff461e),
                                Color(0xffff1054)
                              ])),
                      child: const Center(
                        child: Text(
                          "Sure",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
