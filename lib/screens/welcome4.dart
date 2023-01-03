import 'package:flutter/material.dart';
import 'package:food_app/screens/signup_with_phone.dart';
import 'package:food_app/screens/welcome5.dart';

class WelcomeScreen4 extends StatelessWidget {
  const WelcomeScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -10,
            right: 0,
            left: 0,
            bottom: height * 0.38,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/sandwich.png'),
              ),
            ),
          ),
          Positioned(
            bottom: 00,
            right: 00,
            left: 00,
            child:  Container(
              decoration:const  BoxDecoration(
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
                padding:  EdgeInsets.only(top: 45, bottom: 70),
                child: Column(
                  children: [
                    Text(
                     'Welcome to Foodio',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontFamily: "muli",
                          fontStyle:  FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0),
                    ),
                    SizedBox(height: 40),
                    InkWell(
                      onTap:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => WelcomeScreen5()));
                      },
                      child: Container(
                        //height: height * 0.05,
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                           color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Contuine with Email',
                            style:
                            TextStyle(color: Colors.black,  fontFamily: "muli",
                                fontStyle:  FontStyle.normal,fontSize: 16, fontWeight:FontWeight.w600,),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignupWithPhone() ));
                      },
                      child: Container(
                        //height: height * 0.05,
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Contuine with Phone Number',
                            style:
                            TextStyle(color: Colors.white,  fontFamily: "muli",
                              fontStyle:  FontStyle.normal,fontSize: 16, fontWeight:FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    Text(
                      'Don\'t have an account? Register',
                      style:
                      TextStyle(color: Color(0xffffffff), fontSize: 15, fontFamily: "muli",
                        fontStyle:  FontStyle.normal,),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
