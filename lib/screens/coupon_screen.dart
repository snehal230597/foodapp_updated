import 'package:flutter/material.dart';

class CouponScreen extends StatelessWidget {
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
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'My Coupons',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 225,
                  width: 225,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset('assets/images/coupon.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 10),
              child: Text("You do not have coupons",
                  style: const TextStyle(
                      color: const Color(0xffff2e36),
                      fontWeight: FontWeight.w700,
                      fontSize: 22.0),
                  textAlign: TextAlign.center),
            ),
            Text(
              "Go hunt for vouchers at Foodsss\n           Voucher right away.",
              style: const TextStyle(
                  color: const Color(0xff262b2e),
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextField(
                cursorColor: Colors.black54,
                decoration: InputDecoration(
                  fillColor: Color(0xfff0f1f5),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Enter the Voucher',
                  hintStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          const Color(0xffff461e),
                          const Color(0xffff1054)
                        ])),
                child: Center(
                  child: Text(
                    "Submit",
                    style: const TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
