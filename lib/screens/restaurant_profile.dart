import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/widgets/switch_button.dart';

class RestaurantProfile extends StatefulWidget {
  String? image;

  RestaurantProfile({this.image});

  @override
  State<RestaurantProfile> createState() => _RestaurantProfileState();
}

class _RestaurantProfileState extends State<RestaurantProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Restaurant Profile',
          style: TextStyle(
            color: Colors.black,
            fontFamily: "muli",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    widget.image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Food Order Restaurant",
                  style: const TextStyle(
                      color: const Color(0xff262b2e),
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0),
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/images/position_pin.svg'),
                  SizedBox(width: 10),
                  Text(
                    "70th Street. 80 R 20th St, RU",
                    style: const TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/icon_feather_clock.svg',
                        height: 16, width: 16),
                    SizedBox(width: 12),
                    Text(
                      "Open 10:00 - 05:00",
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Color(0xffffbc00), size: 20),
                    Icon(Icons.star, color: Color(0xffffbc00), size: 20),
                    Icon(Icons.star, color: Color(0xffffbc00), size: 20),
                    Icon(Icons.star, color: Color(0xffffbc00), size: 20),
                    Icon(Icons.star, color: Color(0xffffbc00), size: 20),
                    SizedBox(width: 10),
                    Text(
                      "(4.9)",
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0),
                    ),
                    Text(
                      " -  1220 Reviews",
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0),
                    ),
                  ],
                ),
              ),
              SwitchButton(),
            ],
          ),
        ),
      ),
    );
  }
}
