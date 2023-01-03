import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/screens/navigation_screen.dart';
import 'package:food_app/screens/navigation_screens/home_screen/home_screen.dart';

class SuccessPaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 130),
                child: SvgPicture.asset(
                  'assets/images/sdone.svg',
                  height: 200,
                  width: 230,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                  " Order successful!",
                  style: const TextStyle(
                      color:  const Color(0xffff2e36),
                      fontWeight: FontWeight.w700,
                      fontSize: 22.0
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                  "Your order will be delivered on time.\n                    Thank you!",
                  style: const TextStyle(
                      color:  const Color(0xff888c9b),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: InkWell(
                onTap: (){
                //  Navigator.of(context).push(MaterialPageRoute(builder: (_) => SuccessPaymentScreen()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)
                      ),
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [const Color(0xffff461e), const Color(0xffff1054)])
                  ),
                  child: Center(
                    child: Text(
                      "Payment Done",
                      style: const TextStyle(
                          color:  const Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: (){
                //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => NavigationScreen()));
                },
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: const Color(0xffff2e36).withOpacity(0.1)
                    ),
                  child: Center(
                    child: Text(
                        "Continue Shopping",
                        style: const TextStyle(
                            color:  const Color(0xffff2e36),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0
                        ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
