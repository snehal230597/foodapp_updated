import 'package:flutter/material.dart';
import 'package:food_app/screens/forget_password2.dart';

class ForgetPassword1 extends StatefulWidget {
  @override
  State<ForgetPassword1> createState() => _ForgetPassword1State();
}

final _formKey = GlobalKey<FormState>();

class _ForgetPassword1State extends State<ForgetPassword1> {
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
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
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
                        keyboardType: TextInputType.emailAddress,
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
                          hintText: 'Email Address',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              height: 4 / 5,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            style: const TextStyle(
                                color: const Color(0xff262b2e),
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0),
                            text: "Email sent to "),
                        TextSpan(
                            style: const TextStyle(
                                color: const Color(0xffff2e36),
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0),
                            text: "ex*****@gmail.com")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          } else {
                            showAlertDialog(context);
                          }
                        });
                        //Navigator.push(context, MaterialPageRoute(builder: (_) => OtpVerify()));
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
                            'Send',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    titlePadding: EdgeInsets.all(0),
    title: Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8), topRight: Radius.circular(8)),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            const Color(0xffff461e),
            const Color(0xffff1054),
          ],
        ),
      ),
      child: Center(
        child: Text("Password Reset Email Sent",
            style: const TextStyle(
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
                fontFamily: "Muli",
                fontStyle: FontStyle.normal,
                fontSize: 18.0),
            textAlign: TextAlign.left),
      ),
    ),
    content: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 160,
        child: Column(
          children: [
            Text(
              "        An email has been sent to\n    you Follow direction in the email  \n                to reset password",
              style: const TextStyle(
                  color: const Color(0xff262b2e),
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => ForgetPassword2()),
                  );
                },
                child: Container(
                  width: 189,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(21)),
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        const Color(0xffff461e),
                        const Color(0xffff1054)
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "OK",
                      style: const TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
