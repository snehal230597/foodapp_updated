import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/screens/empty_cart.dart';

class OrderHistory extends StatefulWidget {

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
   int isSelected = 0;

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
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'My Order History',
          style: TextStyle(
            color: Colors.black,
            fontFamily: "muli",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
          ),

        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => EmptyCartScreen()));
                },
                child: SvgPicture.asset('assets/images/ecart.svg', height: 35, width: 35,)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                       isSelected = 0;
                      });
                    },
                    child: Container(
                      width: 165,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: isSelected == 0 ? const Color(0xffff2e36) : Color(0xff1dbf73).withOpacity(0.1),
                      ),
                      child: Center(
                        child: Text(
                          "History",
                          style:  TextStyle(
                              color:isSelected == 0 ? Color(0xffffffff) : Color(0xff1dbf73),
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        isSelected = 1;
                      });
                    },
                    child: Container(
                      width: 165,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: isSelected == 1 ?Color(0xffff2e36) : Color(0xff1dbf73).withOpacity(0.1)),
                      child: Center(
                        child: Text(
                          "Upcoming",
                          style: TextStyle(
                              color: isSelected == 1 ? Color(0xffffffff) : Color(0xff1dbf73),
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 0.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 15),
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundImage: NetworkImage(
                                        'https://holycowvegan.net/wp-content/uploads/2020/01/masala-pasta-indian-street-style-9.jpg'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20, left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "24 Jun, 12:30",
                                        style: const TextStyle(
                                            color: const Color(0xff8a8d9f),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.0),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                                        child: Text(
                                          "Russ Hant",
                                          style: const TextStyle(
                                              color: const Color(0xff262b2e),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15.0),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.circle,
                                              color: Colors.green, size: 10),
                                          Text(
                                            "Upcoming",
                                            style: const TextStyle(
                                                color: const Color(0xff1dbf73),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Column(
                                children: [
                                  Text(
                                    "₹500.00",
                                    style: const TextStyle(
                                        color: const Color(0xffff2e36),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                        width: 83,
                                        height: 24,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            color: const Color(0xfffe2121)),
                                        child: Center(
                                          child: Text(
                                            "Cancel",
                                            style: const TextStyle(
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13.0),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
