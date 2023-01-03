import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/otp.dart';
import 'package:food_app/screens/sign_up2.dart';

class SignupWithPhone extends StatefulWidget {
  const SignupWithPhone({Key? key}) : super(key: key);

  @override
  State<SignupWithPhone> createState() => _SignupWithPhoneState();
}

final _formKey = GlobalKey<FormState>();

class _SignupWithPhoneState extends State<SignupWithPhone> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Colors.white,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios)),
          title: Text(
            'Sign up',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700,),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                      "Login",
                      style: const TextStyle(
                          color:  const Color(0xffff2e36),
                          fontWeight: FontWeight.w600,
                          // fontFamily: "Muli",
                          // fontStyle:  FontStyle.normal,
                          fontSize: 26.0
                      ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "with your Phone number",
                    style: TextStyle(
                        color: const Color(0xff8a8d9f),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: 70,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 10,
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
                            borderRadius: BorderRadius.circular(5),
                          ),
                          prefixIcon: CountryCodePicker(
                            initialSelection: 'IN',
                            showCountryOnly: false,
                            showOnlyCountryWhenClosed: false,
                            favorite: ['IN', '91'],
                            enabled: true,
                            padding: EdgeInsets.only(left: 0, top: 0, bottom: 0),
                          ),
                          suffixIcon: Icon(Icons.done, color: Colors.pink),
                          hintText: 'Phone',
                          hintStyle: TextStyle(
                              fontSize: 15, height: 4 / 5, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => OtpVerify()));
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
                        "Have not any account?",
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0),
                      ),
                      SizedBox(width: 6),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignUpScreen2()));
                        },
                        child: Text(
                          "Sign up",
                          style: const TextStyle(
                              color: Color(0xffff2e36),
                              fontWeight:  FontWeight.w600,
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

