import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_app/screens/sign_in_profile.dart';

class OtpVerify extends StatefulWidget {
  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Verification',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Center(
          child: Column(
            children: [
              Text(
                "OTP Verification",
                style: const TextStyle(
                    color: const Color(0xffff2e36),
                    fontWeight: FontWeight.w600,
                    // fontFamily: "Muli",
                    // fontStyle:  FontStyle.normal,
                    fontSize: 26.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "An authentication code has been sent to",
                  style: TextStyle(
                      color: const Color(0xff8a8d9f),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "(+91) 9687722870",
                  style: const TextStyle(
                      color: const Color(0xffff2e36),
                      fontWeight: FontWeight.w400,
                      // fontFamily: "Muli",
                      // fontStyle:  FontStyle.normal,
                      fontSize: 16.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(32.5)),
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
                        child: TextFormField(
                          cursorColor: Colors.white,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(32.5)),
                          gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [
                                const Color(0xffff461e),
                                const Color(0xffff1054)
                              ]),
                        ),
                        child: Center(
                          child: TextFormField(
                            cursorColor: Colors.white,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        )),
                    SizedBox(width: 10),
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(32.5)),
                        gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              const Color(0xffff461e),
                              const Color(0xffff1054)
                            ]),
                      ),
                      child: Center(
                        child: TextFormField(
                          cursorColor: Colors.white,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(32.5)),
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
                        child: TextFormField(
                          cursorColor: Colors.white,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            } else if (value.length == 0) {
                              FocusScope.of(context).nearestScope;
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I didn't receive code.",
                      style: const TextStyle(
                          color: const Color(0xff15294b),
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0),
                    ),
                    Text(
                      "Resend Code",
                      style: const TextStyle(
                          color: const Color(0xffff2e36),
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                  ],
                ),
              ),
              Text("1:20 Sec left",
                  style: const TextStyle(
                      color: const Color(0xfffe2121),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Muli",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.0),
                  textAlign: TextAlign.left),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: InkWell(
                  onTap: () {
                    Fluttertoast.showToast(msg: "phone number verified");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SignInProfile(),
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
                        'Verify Now',
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
    );
  }
}
