import 'package:flutter/material.dart';

class ChatDetailsScreen extends StatefulWidget {
  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height,
            color: Color(0xffFF2E36),
            child: Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 40,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(Icons.menu, size: 30, color: Colors.white),
                  ),
                  Text(
                    "Supports",
                    style: const TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontSize: 24.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.notifications_active_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 150,
            bottom: 00,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20,top: 190),
                child: Column(
                  children: [
                    SafeArea(
                      child: Text(
                        "Today, 10:50 PM",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: const Color(0xff262b2e),
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.orange,
                              radius: 15,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    'assets/images/sp.png',
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Lorem ipsum, or lipsum as it is\nsometimes known, is dummy text\nused in laying out print, graphic\nor web designs. The passage is\nattributed.",
                                    style: const TextStyle(
                                        color: const Color(0xff262b2e),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.0),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 30),
                                  child: Text(
                                    "10:50 AM",
                                    style: const TextStyle(
                                        color: const Color(0xff8a959e),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.0),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 250,
                            height: 110,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: const Color(0xffff2e36)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used type specimen book.",
                                  style: const TextStyle(
                                      color: const Color(0xffffffff),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          fillColor: Colors.black12,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Send a message',
                          suffixIcon:
                              Icon(Icons.send, color: Colors.red, size: 30),
                          hintStyle: TextStyle(
                              fontSize: 15,
                              height: 4 / 5,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


      // resizeToAvoidBottomInset: false,
      // extendBodyBehindAppBar: true,
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(100.0),
      //   child: AppBar(
      //     backgroundColor: Colors.white,
      //     centerTitle: true,
      //     elevation: 0,
      //     flexibleSpace: Container(
      //       decoration: BoxDecoration(
      //         color: Color(0xffFF2E36),
      //         borderRadius: BorderRadius.only(
      //           bottomLeft: Radius.circular(30),
      //           bottomRight: Radius.circular(30),
      //         ),
      //       ),
      //     ),
      //     title: Padding(
      //       padding: const EdgeInsets.only(top: 30),
      //       child: Text(
      //         "Supports",
      //         style: const TextStyle(
      //             color: const Color(0xffffffff),
      //             fontWeight: FontWeight.w700,
      //             fontSize: 22.0),
      //       ),
      //     ),
      //     leading: Padding(
      //       padding: const EdgeInsets.only(top: 30),
      //       child: Icon(Icons.menu, size: 25),
      //     ),
      //     actions: [
      //       Padding(
      //         padding: const EdgeInsets.only(right: 20, top: 30),
      //         child: Icon(Icons.notifications_active_rounded),
      //       ),
      //     ],
      //   ),
      // ),
      // bottomNavigationBar:  Padding(
      //   padding: const EdgeInsets.all(20),
      //   child: TextField(
      //     cursorColor: Colors.black,
      //     decoration: InputDecoration(
      //       fillColor: Colors.black12,
      //       filled: true,
      //       focusedBorder: OutlineInputBorder(
      //         borderSide: BorderSide(color: Colors.transparent),
      //       ),
      //       enabledBorder: OutlineInputBorder(
      //           borderSide: BorderSide(color: Colors.transparent)),
      //       border: OutlineInputBorder(
      //         borderRadius: BorderRadius.circular(10),
      //       ),
      //       hintText: 'Send a message',
      //       suffixIcon: Icon(Icons.send, color: Colors.red, size: 30),
      //       hintStyle: TextStyle(
      //           fontSize: 15,
      //           height: 4 / 5,
      //           fontWeight: FontWeight.bold),
      //     ),
      //   ),
      // ),
      // body: Padding(
      //   padding:  EdgeInsets.only(left: 20, right: 20),
      //   child: Column(
      //     children: [
      //       SizedBox(height: 230),
      //       SafeArea(
      //         child: Text(
      //           "Today, 10:50 PM",
      //           textAlign: TextAlign.center,
      //           style: const TextStyle(
      //               color: const Color(0xff262b2e),
      //               fontWeight: FontWeight.w500,
      //               fontSize: 15.0),
      //         ),
      //       ),
      //       SizedBox(height: 10),
      //       Container(
      //         child: Padding(
      //           padding: const EdgeInsets.symmetric(vertical: 15),
      //           child: Row(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               CircleAvatar(
      //                 backgroundColor: Colors.orange,
      //                 radius: 15,
      //                 child: ClipRRect(
      //                   borderRadius: BorderRadius.circular(100),
      //                   child: FittedBox(
      //                     fit: BoxFit.fill,
      //                     child: Image.asset(
      //                       'assets/images/sp.png',
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //               Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Padding(
      //                     padding: const EdgeInsets.only(left: 20),
      //                     child: Text(
      //                       "Lorem ipsum, or lipsum as it is\nsometimes known, is dummy text\nused in laying out print, graphic\nor web designs. The passage is\nattributed.",
      //                       style: const TextStyle(
      //                           color: const Color(0xff262b2e),
      //                           fontWeight: FontWeight.w400,
      //                           fontSize: 14.0),
      //                     ),
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.only(left: 20, top: 30),
      //                     child: Text(
      //                       "10:50 AM",
      //                       style: const TextStyle(
      //                           color: const Color(0xff8a959e),
      //                           fontWeight: FontWeight.w400,
      //                           fontSize: 12.0),
      //                     ),
      //                   ),
      //                 ],
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(top: 30),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.end,
      //           children: [Container(
      //             width: 250,
      //             height: 110,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.all(Radius.circular(20)),
      //                 color: const Color(0xffff2e36)),
      //             child: Center(
      //               child: Padding(
      //                 padding: const EdgeInsets.all(15),
      //                 child: Text(
      //                   "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used type specimen book.",
      //                   style: const TextStyle(
      //                       color: const Color(0xffffffff),
      //                       fontWeight: FontWeight.w400,
      //                       fontSize: 14.0),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ]),
      //       ),
      //     ],
      //   ),
      // ),

