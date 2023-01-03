import 'package:flutter/material.dart';
import 'package:food_app/screens/change_password.dart';

class ForgetPassword2 extends StatefulWidget {
  @override
  State<ForgetPassword2> createState() => _ForgetPassword2State();
}

final _formKey = GlobalKey<FormState>();

class _ForgetPassword2State extends State<ForgetPassword2> {
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
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios)),
          title: Text(
            'Forget Password',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
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
                    "             We will send a mail to\n the email address you registered\n          to regain your password",
                    style: const TextStyle(
                        color: const Color(0xff262b2e),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 5),
                    child: Container(
                      height: 70,
                      child: TextFormField(
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return "Please enter email id";
                        //   } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        //     return "Enter a valid email id";
                        //   }
                        //   return null;
                        // },
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          fillColor: Color(0xfff4f5f7),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'Enter code here...',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              height: 4 / 5,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not Yet Code",
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Muli",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Resend Now!",
                        style: const TextStyle(
                            color: const Color(0xffff2e36),
                            fontWeight: FontWeight.w700,
                            fontFamily: "muli",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          } else {}
                        });
                        //Navigator.push(context, MaterialPageRoute(builder: (_) => OtpVerify()));
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ChangePassword()));
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
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Verify',
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
