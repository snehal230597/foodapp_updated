import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ChangePassword extends StatefulWidget {
  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}
class _ChangePasswordState extends State<ChangePassword> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  bool _isObscure3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Change Password',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            TextFormField(
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return "Please enter email id";
              //   } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
              //     return "Enter a valid email id";
              //   }
              //   return null;
              // },
              keyboardType: TextInputType.emailAddress,
              onTap: () {
                setState(() {
                  _isObscure1 = !_isObscure1;
                });
              },
              cursorColor: Colors.black,
              obscureText: _isObscure1,
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
                suffixIcon: Icon(
                    _isObscure1 ? (Icons.visibility_off) : (Icons.visibility),
                    color: _isObscure1 ? Colors.grey : Colors.red),
                hintText: 'Old Password',
                hintStyle: TextStyle(
                    fontSize: 15,
                    height: 4 / 5,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
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
                onTap: () {
                  setState(() {
                    _isObscure2 = !_isObscure2;
                  });
                },
                cursorColor: Colors.black,
                obscureText: _isObscure2,
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
                  suffixIcon: Icon(
                      _isObscure2 ? (Icons.visibility_off) : (Icons.visibility),
                      color: _isObscure2 ? Colors.grey : Colors.red),
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
              padding: const EdgeInsets.only(top: 20),
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
                onTap: () {
                  setState(() {
                    _isObscure3 = !_isObscure3;
                  });
                },
                cursorColor: Colors.black,
                obscureText: _isObscure3,
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
                  suffixIcon: Icon(
                      _isObscure3 ? (Icons.visibility_off) : (Icons.visibility),
                      color: _isObscure3 ? Colors.grey : Colors.red),
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
              padding: const EdgeInsets.only(top: 50),
              child: InkWell(
                onTap: () {
                  setState(() {
                    Fluttertoast.showToast(msg: "Password has been changed");
                  });
                },
                child: InkWell(
                  onTap: (){
                  //  Navigator.of(context).pushReplacement(newRoute)
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
                        'Save',
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
            )
          ],
        ),
      ),
    );
  }
}
