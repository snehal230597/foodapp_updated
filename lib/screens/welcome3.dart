import 'package:flutter/material.dart';
import 'package:food_app/screens/welcome4.dart';
import 'package:food_app/widgets/welcome_container.dart';

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: height * 0.38,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/chainese.png'),
              ),
            ),
          ),
          Positioned(
            bottom: 00,
            right: 00,
            left: 00,
            child: WelcomeScreenContainer(title: 'Enjoy Your Meal',
              color1: Colors.white,
              color2: Colors.white,
              color3: Colors.black,
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => WelcomeScreen4())),
            ),
          ),
        ],
      ),
    );
  }
}
