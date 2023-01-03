import 'package:flutter/material.dart';
import 'package:food_app/screens/sign_in_profile.dart';
import 'package:food_app/screens/sign_up2.dart';

class WelcomeScreen5 extends StatelessWidget {
  const WelcomeScreen5({Key? key}) : super(key: key);

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
                child: Image.asset('assets/images/pizza.png'),
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
                padding:  EdgeInsets.only(top: 40, bottom: 60),
                child: Column(
                  children: [
                    Text(
                      'Welcome to Foodio',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "muli",
                          fontStyle:  FontStyle.normal,
                          fontSize: 30.0),
                    ),
                    SizedBox(height: 35),
                    Text(
                      'Deliver your Cloth around the world\n               without hesitation',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w400,
                          fontFamily: "muli",
                          fontStyle:  FontStyle.normal,
                          fontSize: 16.0),
                    ),
                    SizedBox(height: 35),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => SignInProfile()));
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
                            'Login',
                            style:
                            TextStyle(color: Colors.black, fontFamily: "muli",
                              fontStyle:  FontStyle.normal,fontSize: 17, fontWeight:FontWeight.w600,),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignUpScreen2()));
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
                            'Register',
                            style:
                            TextStyle(color: Colors.white, fontFamily: "muli",
                              fontStyle:  FontStyle.normal, fontSize: 17, fontWeight:FontWeight.w600,),
                          ),
                        ),
                      ),
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
