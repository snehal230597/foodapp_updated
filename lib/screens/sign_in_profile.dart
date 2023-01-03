import 'package:flutter/material.dart';
import 'package:food_app/screens/forget_password1.dart';
import 'package:food_app/screens/navigation_screen.dart';
import 'package:food_app/screens/sign_up2.dart';

class SignInProfile extends StatefulWidget {
  @override
  State<SignInProfile> createState() => _SignInProfileState();
}

class _SignInProfileState extends State<SignInProfile> {
  bool valueFirst = false;

  List<FocusNode> _focusNodes = [
    FocusNode(),
  ];
  List<FocusNode> _focusNodes1 = [
    FocusNode(),
  ];

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
            'Sign In',
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
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 70,
                    child: ClipRRect(
                      child: Image.asset('assets/images/sp.jpeg'),
                      borderRadius: BorderRadius.circular(70.0),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Welcome Back Snehal",
                  style: const TextStyle(
                      color: const Color(0xffff2e36),
                      fontWeight: FontWeight.w600,
                      fontFamily: "muli",
                      fontStyle: FontStyle.normal,
                      fontSize: 22.0),
                ),
                SizedBox(height: 10),
                Text(
                  "Sign in to continue",
                  style: const TextStyle(
                      color: const Color(0xff262b2e),
                      fontWeight: FontWeight.w400,
                      fontFamily: "muli",
                      fontStyle: FontStyle.normal,
                      fontSize: 18.0),
                ),
                SizedBox(height: 70),
                TextFormField(
                  onTap: () {
                    setState(() {
                      _focusNodes.forEach((node) {
                        node.addListener(() {});
                      });
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter email id";
                    } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return "Enter a valid email id";
                    }
                    return null;
                  },
                  cursorColor: Colors.black,
                  focusNode: _focusNodes[0],
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
                    prefixIcon: Icon(
                      Icons.mail,
                      size: 30,
                      color: _focusNodes[0].hasFocus
                          ? Color(0xffFF2E36)
                          : Colors.grey,
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                        fontSize: 15,
                        height: 4 / 5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onTap: () {
                    setState(() {
                      _focusNodes1.forEach((node) {
                        node.addListener(() {});
                      });
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter password";
                    }
                    return null;
                  },
                  obscureText: true,
                  focusNode: _focusNodes1[0],
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
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 30,
                      //  color: Colors.grey,
                      color: _focusNodes1[0].hasFocus
                          ? Color(0xffFF2E36)
                          : Colors.grey,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontSize: 15,
                        height: 4 / 5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                        ),
                        Text(
                          "Remember me",
                          style: const TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                              fontFamily: "muli",
                              fontStyle: FontStyle.normal,
                              fontSize: 15.0),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ForgetPassword1()));
                          },
                          child: Text(
                            "Forget password ?",
                            style: const TextStyle(
                                color: const Color(0xffff2e36),
                                fontFamily: "muli",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => NavigationScreen(),
                      ),
                    );
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
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "muli",
                          fontStyle: FontStyle.normal,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontFamily: "muli",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0),
                    ),
                    SizedBox(width: 6),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => SignUpScreen2()));
                      },
                      child: Text(
                        "Sign up!",
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
    );
  }
}
