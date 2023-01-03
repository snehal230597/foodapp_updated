import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/sign_up3.dart';

class SignUpScreen2 extends StatefulWidget {

  @override
  State<SignUpScreen2> createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  bool valueFirst = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Sign Up',
          style: TextStyle(color: Colors.black,  fontWeight: FontWeight.w700,),
        ),
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 60,
                      child: Icon(Icons.camera_alt,color: Colors.grey,size: 50,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextFormField(
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return "Please enter your name";
                      //   }
                      //   return null;
                      // },
                      keyboardType: TextInputType.emailAddress,
                      onTap: (){},
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Color(0xfff4f5f7),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Full Name',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            height: 4 / 5,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return "Please enter email id";
                      //   } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      //     return "Enter a valid email id";
                      //   }
                      //   return null;
                      // },
                      keyboardType: TextInputType.emailAddress,
                      onTap: (){},
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Color(0xfff4f5f7),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            height: 4 / 5,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return "Please enter email id";
                      //   } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      //     return "Enter a valid email id";
                      //   }
                      //   return null;
                      // },
                      keyboardType: TextInputType.emailAddress,
                      onTap: (){},
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Color(0xfff4f5f7),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            height: 4 / 5,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return "Please enter email id";
                      //   } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      //     return "Enter a valid email id";
                      //   }
                      //   return null;
                      // },
                      keyboardType: TextInputType.emailAddress,
                      onTap: (){},
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Color(0xfff4f5f7),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            height: 4 / 5,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return "Please enter email id";
                      //   } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      //     return "Enter a valid email id";
                      //   }
                      //   return null;
                      // },
                      keyboardType: TextInputType.emailAddress,
                      onTap: (){},
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Color(0xfff4f5f7),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            height: 4 / 5,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                  //    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Column(
                       // mainAxisAlignment: MainAxisAlignment.start,
                       // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Checkbox(
                                checkColor: Colors.white,
                                activeColor: Color(0xffFF2E36),
                                value: this.valueFirst,
                                onChanged: (bool? value) {
                                  setState(() {
                                    this.valueFirst = value!;
                                  });
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "By creating an account you agree to",
                              style: const TextStyle(
                                  color:  Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0
                              ),textAlign: TextAlign.left
                          ),
                          Text(
                              "our Terms of Service and Privacy Policy",
                              style: const TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0
                              ),
                          ),
                        ],
                      )
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignUpScreen3()));
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [
                                const Color(0xffff461e),
                                const Color(0xffff1054)
                              ]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: const TextStyle(
                            color: Color(0xff262b2e),
                            fontFamily: "muli",
                            fontStyle:  FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0),
                      ),
                      SizedBox(width: 6),
                      InkWell(
                        onTap: (){
                        //  Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignUpScreen2()));
                        },
                        child: Text(
                          "Sign in !",
                          style: const TextStyle(
                              color: Color(0xffff2e36),
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
