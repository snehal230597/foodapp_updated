import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/address.dart';
import '../../comman_widgets/common_appbar.dart';
import '../../utils/utils.dart';
import '../FAQ_screen.dart';
import '../chat_support_screen.dart';
import '../coupon_screen.dart';
import '../order_history.dart';
import '../track_order.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

void handleClick(item) {
  switch (item) {
    case 0:
      break;
    case 1:
      break;
    case 2:
      break;
    case 3:
      break;
    case 4:
      break;
  }
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  int _itemCount = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final List<int> _data = [for (var i = 0; i < 50; i++) i];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: CommonAppbar(
          fontColor: Colors.black,
          centerTitle: true,
          title: 'Order Details',
           backgroundColor: Colors.white,
          shadowColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          fontWeight: FontWeight.w700,
          rPadding: 5,
          isBackEnable: true,
          istrailingIcon: true,
          lIcon: IconButton(
            onPressed: () {
              Utils.routsfunction(context, Container(), "back");
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          tIcon:  PopupMenuButton(
          color: const Color(0xffFF2E36),
          onSelected: (item) => handleClick(item),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 0,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => OrderHistory(),
                    ),
                  );
                },
                child: Text(
                  'Order history',
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0),
                ),
              ),
            ),
            PopupMenuItem(
              value: 1,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => TrackOrderScreen()));
                },
                child: Text(
                  'Track order',
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0),
                ),
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CouponScreen()));
                },
                child: Text(
                  'My Coupon',
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0),
                ),
              ),
            ),
            PopupMenuItem(
              value: 3,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => FAQScreen()));
                },
                child: Text(
                  'FAQ',
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0),
                ),
              ),
            ),
            PopupMenuItem(
              value: 4,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatSupportScreen(),
                    ),
                  );
                },
                child: Text(
                  'Support',
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0),
                ),
              ),
            ),
            PopupMenuItem(
              value: 5,
              child: Text(
                'more',
                style: const TextStyle(
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0),
              ),
            ),
          ],
        ),
        ),
      ),
     /*
      AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Order Details',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          PopupMenuButton(
            color: Color(0xffFF2E36),
            onSelected: (item) => handleClick(item),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => OrderHistory(),
                      ),
                    );
                  },
                  child: Text(
                    'Order history',
                    style: const TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0),
                  ),
                ),
              ),
              PopupMenuItem(
                value: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => TrackOrderScreen()));
                  },
                  child: Text(
                    'Track order',
                    style: const TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0),
                  ),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => CouponScreen()));
                  },
                  child: Text(
                    'My Coupon',
                    style: const TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0),
                  ),
                ),
              ),
              PopupMenuItem(
                value: 3,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => FAQScreen()));
                  },
                  child: Text(
                    'FAQ',
                    style: const TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0),
                  ),
                ),
              ),
              PopupMenuItem(
                value: 4,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChatSupportScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Support',
                    style: const TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0),
                  ),
                ),
              ),
              PopupMenuItem(
                value: 5,
                child: Text(
                  'more',
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0),
                ),
              ),
            ],
          ),
        ],
      ),

      */
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Dismissible(
                        background: Icon(Icons.delete_forever_rounded,
                            size: 50, color: Colors.red),
                        key: ObjectKey(_data[index]),
                        child: Card(
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          elevation: 0,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image.network(
                                              'https://p4.wallpaperbetter.com/wallpaper/698/474/361/dinner-food-pie-pizza-wallpaper-preview.jpg')),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Spicy Manchurian Dry",
                                            style: const TextStyle(
                                                color: const Color(0xff262b2e),
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Muli",
                                                fontStyle: FontStyle.normal,
                                                fontSize: 14.0),
                                            textAlign: TextAlign.left),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8),
                                          child: Text(
                                            "sells food, either fresh,specie,chilli",
                                            style: const TextStyle(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12.0),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffffbc00),
                                                size: 16,
                                              ),
                                              Icon(Icons.star,
                                                  color: Color(0xffffbc00),
                                                  size: 16),
                                              Icon(Icons.star,
                                                  color: Color(0xffffbc00),
                                                  size: 16),
                                              Icon(Icons.star,
                                                  color: Color(0xffffbc00),
                                                  size: 16),
                                              Icon(Icons.star,
                                                  color: Color(0xffffbc00),
                                                  size: 16),
                                              SizedBox(width: 10),
                                              Text(
                                                "4.9",
                                                style: const TextStyle(
                                                    color:
                                                        const Color(0xff000000),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.0),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 115,
                                                // color: Colors.lime,
                                                child: Row(
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        setState(
                                                          () {
                                                            if (_itemCount > 0)
                                                              _itemCount--;
                                                          },
                                                        );
                                                      },
                                                      child: Container(
                                                        height: 23,
                                                        width: 23,
                                                        decoration:
                                                            BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .black12),
                                                        child: Center(
                                                          child: Icon(
                                                            Icons.remove,
                                                            color: Colors.red,
                                                            size: 15,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 3),
                                                      child: Container(
                                                        width: 25,
                                                        child: Center(
                                                          child: FittedBox(
                                                            fit: BoxFit.fill,
                                                            child: Text(
                                                                _itemCount
                                                                    .toString(),
                                                                style: const TextStyle(
                                                                    color: const Color(
                                                                        0xff262b2e),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        16.0),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          _itemCount++;
                                                        });
                                                      },
                                                      child: Container(
                                                        height: 23,
                                                        width: 23,
                                                        decoration:
                                                            BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Color(
                                                                    0xffFF2E36)),
                                                        child: Center(
                                                            child: Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                          size: 15,
                                                        )),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2),
                                              Text(
                                                "₹500.00",
                                                style: const TextStyle(
                                                    color:
                                                        const Color(0xffff2e36),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.0),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: DottedLine(
                    dashColor: Color(0xff181818).withOpacity(0.2),
                    lineThickness: 2.5,
                    dashLength: 6),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border:
                        Border.all(color: const Color(0xffd7d7d7), width: 1),
                    color: const Color(0x1affffff),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      "Enjoy discount up to 20%",
                      style: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: DottedLine(
                    dashColor: Color(0xff181818).withOpacity(0.2),
                    lineThickness: 2.5,
                    dashLength: 6),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Discount :",
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "₹100.00",
                      style: const TextStyle(
                          color: const Color(0xffff2e36),
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Sub Total ( 5 item ):",
                      style: const TextStyle(
                          color: const Color(0xff333333),
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "₹400.00",
                      style: const TextStyle(
                          color: const Color(0xffff2e36),
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => AddressScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
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
                        "Process to Checkout",
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
          ),
        ),
      ),
    );
  }
}
