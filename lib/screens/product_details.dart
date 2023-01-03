import 'package:flutter/material.dart';
import 'package:food_app/comman_widgets/comman_button.dart';
import 'package:food_app/screens/navigation_screens/order_details.dart';
import 'package:food_app/widgets/button.dart';
import 'package:sizer/sizer.dart';

import '../utils/util_colors.dart';

class ProductDetailScreen extends StatefulWidget {
  String? image;

  ProductDetailScreen({this.image});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _itemCount = 0;

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
        title: const Text(
          'Product Details',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(widget.image!),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  "Spicy Manchurian Dry",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0),
                ),
              ),
              const Text(
                  "Add the remaining ingredients and toss to coat. Serve. Notes. Note: Kani Salad is best served fresh. Due to the water content from cucumbers ..",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0),
                  textAlign: TextAlign.left),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "₹500.00",
                      style: TextStyle(
                          color: Color(0xffff2e36),
                          fontWeight: FontWeight.w600,
                          fontSize: 24.0),
                    ),
                    Row(
                      children: const [
                        Text(
                          "4.9",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.star, size: 22, color: Colors.orange),
                        SizedBox(width: 5),
                        Text(
                          "120 Review",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  if (_itemCount > 0) _itemCount--;
                                },
                              );
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black12),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            width: 25,
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Text(_itemCount.toString(),
                                    style: const TextStyle(
                                        color: Color(0xff262b2e),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20.0),
                                    textAlign: TextAlign.left),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _itemCount++;
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffFF2E36)),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //use commonbutton here....
                    CommonButtonView(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => OrderDetailsScreen()));
                      },
                      height: 5.2.h,
                      width: 40.w,
                      title: "Add to Cart",
                      fontColor: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      isGradient: true,
                      gradianClist: [redGradiant1, redGradiant2],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Recommended ",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Color(0xffff2e36),
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 175,
                      // height: 265,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x40d3d1d8),
                              offset: Offset(0, 0),
                              blurRadius: 25,
                              spreadRadius: 0),
                        ],
                        color: Color(0xffffffff),
                      ),
                      child: Stack(children: [
                        Positioned(left: 10, top: 10, child: FavButton()),
                        Positioned(
                          right: 10,
                          top: 10,
                          child: PlusButton(),
                        ),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 25, bottom: 20),
                              child: CircleAvatar(
                                radius: 50.0,
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGl6emElMjBzbGljZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            const Text(
                              "Italian Pizza",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 15, bottom: 10),
                              child: Center(
                                child: Text(
                                  "spicy,tomato,sauce,chili\n   mozzerella, hotdog",
                                  style: TextStyle(
                                      color: Colors.black26,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.0),
                                ),
                              ),
                            ),
                            const Text(
                              "₹500.00",
                              style: TextStyle(
                                  color: Color(0xffff2e36),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 10),
                              child: CommonButtonView(
                                height: 3.8.h,
                                width: 33.w,
                                isGradient: false,
                                title: 'Add to Cart',
                                fontColor: const Color(0xffff2e36),
                                fontWeight: FontWeight.w600,
                                fontSize: 12.0,
                                backgroundColor:
                                    const Color(0xffff2e36).withOpacity(0.1),
                                borderRadius: 5,
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    SizedBox(width: 12),
                    Container(
                      width: 175,
                      // height: 265,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x40d3d1d8),
                              offset: Offset(0, 0),
                              blurRadius: 25,
                              spreadRadius: 0),
                        ],
                        color: Color(0xffffffff),
                      ),
                      child: Stack(
                        children: [
                          Positioned(left: 10, top: 10, child: const FavButton()),
                          Positioned(right: 10, top: 10, child: PlusButton()),
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 25, bottom: 20),
                                child: CircleAvatar(
                                  radius: 50.0,
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGl6emElMjBzbGljZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              const Text(
                                "Italian Pizza",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15, bottom: 10),
                                child: Center(
                                  child: Text(
                                    "spicy,tomato,sauce,chili\n   mozzerella, hotdog",
                                    style: TextStyle(
                                        color: Colors.black26,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.0),
                                  ),
                                ),
                              ),
                              const Text(
                                "₹500.00",
                                style: TextStyle(
                                    color: Color(0xffff2e36),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.0),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 10),
                                child: CommonButtonView(
                                  height: 3.8.h,
                                  width: 33.w,
                                  isGradient: false,
                                  title: 'Add to Cart',
                                  fontColor: const Color(0xffff2e36),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                  backgroundColor:
                                      const Color(0xffff2e36).withOpacity(0.1),
                                  borderRadius: 5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
