import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/screens/current_location_screen.dart';
import 'package:food_app/screens/navigation_screens/home_screen/category_list.dart';
import 'package:food_app/screens/navigation_screens/home_screen/near_by.dart';
import 'package:food_app/screens/navigation_screens/home_screen/popular.dart';
import 'package:food_app/screens/navigation_screens/order_details.dart';
import 'package:food_app/widgets/const.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 00,
          title: Container(
            height: 50,
            width: double.infinity,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(20),
            // ),
            //width: 400,
            child: TextField(
              cursorColor: Colors.black54,
              decoration: InputDecoration(
                fillColor: textfieldColor,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                // border: OutlineInputBorder(
                //   borderSide: BorderSide(color: Colors.transparent),
                //   borderRadius: BorderRadius.circular(10),
                // ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 23,
                  color: Colors.black54,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                    fontSize: 15, height: 3, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => OrderDetailsScreen()));
                  },
                  child: SvgPicture.asset('assets/images/cart.svg')),
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 5),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => CurrentLocationScreen(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/position_pin.svg'),
                    SizedBox(width: 10),
                    Text(
                      "9 West 46th Street, Russian Federation ",
                      style: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              CategoryList(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Food",
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0),
                    ),
                    Text(
                      "See All",
                      style: const TextStyle(
                          color: const Color(0xffff2e36),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0),
                    ),
                  ],
                ),
              ),
              PopularList(),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 15, right: 15, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Near By You",
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0),
                    ),
                    Text(
                      "See All",
                      style: const TextStyle(
                          color: const Color(0xffff2e36),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0),
                    ),
                  ],
                ),
              ),
              NearByList(),
            ],
          ),
        ),
      ),
    );
  }
}
