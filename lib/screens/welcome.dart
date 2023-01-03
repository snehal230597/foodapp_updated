import 'package:flutter/material.dart';
import 'package:food_app/screens/welcome2.dart';
import 'package:food_app/widgets/welcome_container.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -90,
            bottom: height * 0.38,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/vegetable.png'),
              ),
            ),
          ),
          Positioned(
            right: -150,
            top: -20,
            child: SizedBox(
              height: height * 0.52,
              width: width * 0.5,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/vegetable.png'),
              ),
            ),
          ),
          Positioned(
            bottom: 00,
            right: 00,
            left: 00,
            child: WelcomeScreenContainer(
                title: "Welcome to Foodio",
                color1: Colors.black,
                color2: Colors.white,
                color3: Colors.white,
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const WelcomeScreen2()))),
          ),
        ],
      ),
    );
  }
}
