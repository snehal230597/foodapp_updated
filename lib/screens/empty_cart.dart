import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/screens/navigation_screens/home_screen/home_screen.dart';

class EmptyCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 180),
              child: SvgPicture.asset('assets/images/tsmily.svg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Text(
                "Your Cart is empty",
                style: const TextStyle(
                    color:  const Color(0xffff2e36),
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
                "Looks like you haven't made your\n  order yet.",
                style: const TextStyle(
                    color:  const Color(0xff262b2e),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Muli",
                    fontStyle:  FontStyle.normal,
                    fontSize: 14.0
                ),
                textAlign: TextAlign.center
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: Container(
                  width: 235,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)
                      ),
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [const Color(0xffff461e), const Color(0xffff1054)]),
                  ),
                child: Center(
                  child: Text(
                      "Shop now",
                      style: const TextStyle(
                          color:  const Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0
                      ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
