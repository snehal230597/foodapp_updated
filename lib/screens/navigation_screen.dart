import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'navigation_screens/account.dart';
import 'navigation_screens/order_details.dart';
import 'navigation_screens/favorite_screen.dart';
import 'navigation_screens/home_screen/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int screenIndex = 0;
  final screens = [
    HomeScreen(),
    FavoriteScreen(),
    OrderDetailsScreen(),
    AccountScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          screens[screenIndex],
          Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        const Color(0xffff461e),
                        const Color(0xffff1054)
                      ])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        screenIndex = 0;
                      });
                    },
                    icon:
                    // screenIndex == 0
                    //     ?
                    SvgPicture.asset("assets/images/home.svg")
                        // : CircleAvatar(
                        //     radius: 35,
                        //     backgroundColor: Colors.white,
                        //     child: Icon(
                        //       Icons.home,
                        //       size: 33,
                        //       color: Colors.black54,
                        //     ),
                        //   ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        screenIndex = 1;
                      });
                    },
                    icon:
                    // screenIndex == 1
                    //     ?
                    SvgPicture.asset("assets/images/fav.svg", color: Colors.white,)
                        // : Icon(
                        //     Icons.favorite,
                        //     size: 33,
                        //     color: Colors.black54,
                        //   ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        screenIndex = 2;
                      });
                    },
                    icon:
                    // screenIndex == 2
                    //     ?
                    SvgPicture.asset("assets/images/ac.svg", color: Colors.white,)
                        // : Icon(
                        //     Icons.shopping_cart,
                        //     size: 33,
                        //     color: Colors.black54,
                        //   ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        screenIndex = 3;
                      });
                    },
                    icon:
                    // screenIndex == 3
                    //     ?
                    SvgPicture.asset("assets/images/cart_icon.svg", color: Colors.white,)
                        // : Icon(
                        //     Icons.account_circle,
                        //     size: 33,
                        //     color: Colors.black54,
                        //   ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
