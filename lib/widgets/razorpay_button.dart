import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';


// Razorpay code integration in this file

class RazorpayButton extends StatefulWidget {
  @override
  State<RazorpayButton> createState() => _RazorpayButtonState();
}

class _RazorpayButtonState extends State<RazorpayButton> {
  late Razorpay razorpay;
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    razorpay = new Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalwallet);
  }

  @override
  void dispose() {
    super.dispose();
    razorpay.clear();
  }

  void openCheckout() {
    var options = {
      "key" : "rzp_test_sByVcffxKvOCZ9",
    //  "amount" : num.parse(textEditingController.text) *  100,
      "amount" : 540 * 100,
      "name" : "HashTechy",
      "description" : "salary has been send to your account",
      "prefill" :  {
        "contact" : "9090909090",
        "email" : "abc@gmail.com",
      },
      "external" : {
        "wallets" : ["paytm"]
      }
    };
    try{
      razorpay.open(options);
    }catch(e){
      print(e.toString());
    }

  }

  void handlerPaymentSuccess() {
    print('payment success');
    Fluttertoast.showToast(msg: "payment success");
  }

  void handlerErrorFailure() {
    print('Payment error');
    Fluttertoast.showToast(msg: "payment failed");
  }

  void handlerExternalwallet() {
    print('Payment External wallet');
    Fluttertoast.showToast(msg: "External wallet");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Padding(
        //   padding: const EdgeInsets.only(top: 20),
        //   child: TextField(
        //     controller: textEditingController,
        //     keyboardType: TextInputType.number,
        //     cursorColor: Colors.black,
        //     decoration: InputDecoration(
        //       fillColor: Color(0xfff4f5f7),
        //       filled: true,
        //       focusedBorder: OutlineInputBorder(
        //         borderSide: BorderSide(color: Colors.grey),
        //       ),
        //       enabledBorder: OutlineInputBorder(
        //         borderSide: BorderSide(color: Colors.grey),
        //       ),
        //       border: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       hintText: 'payment amount',
        //       hintStyle: TextStyle(
        //           fontSize: 15, height: 4 / 5, fontWeight: FontWeight.bold),
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: InkWell(
            onTap: () {
             openCheckout();
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [const Color(0xffff461e), const Color(0xffff1054)],
                ),
              ),
              child: Center(
                child: Text(
                  "Process Payment",
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
