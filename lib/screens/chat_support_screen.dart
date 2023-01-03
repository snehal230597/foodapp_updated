import 'package:flutter/material.dart';
import 'package:food_app/screens/chat_details_screen.dart';

class ChatSupportScreen extends StatefulWidget {
  @override
  State<ChatSupportScreen> createState() => _ChatSupportScreenState();
}

class _ChatSupportScreenState extends State<ChatSupportScreen> {
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
              padding: const EdgeInsets.only(
                top: 70,
                bottom: 40,
              ),
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
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              fillColor: Colors.black12,
                              filled: true,

                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              hintText: 'Search inbox',
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  height: 4 / 5,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => ChatDetailsScreen(),
                            ),
                          );
                        },
                        child: Container(
                          color: Colors.white,
                          child: Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 00, top: 15, bottom: 15),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.orange,
                                    radius: 35,
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: FittedBox(
                                          fit: BoxFit.fill,
                                          child: Image.asset(
                                            'assets/images/sp.png',
                                          ),
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Snehal Prajapati",
                                        style: const TextStyle(
                                            color: const Color(0xff262b2e),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Hey, How are you Buddy?",
                                          style: const TextStyle(
                                              color: const Color(0xff8a959e),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.0),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 00, top: 15, bottom: 15),
                                child: CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  radius: 35,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'assets/images/amin.png',
                                        fit: BoxFit.fitHeight,
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Amin Ganja",
                                      style: const TextStyle(
                                          color: const Color(0xff262b2e),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        "where are you now?",
                                        style: const TextStyle(
                                            color: const Color(0xff8a959e),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.0),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, top: 15, bottom: 15),
                                child: CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  radius: 35,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'assets/images/krn.png',
                                        fit: BoxFit.fitHeight,
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Karan Patel",
                                      style: const TextStyle(
                                          color: const Color(0xff262b2e),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        "please wait for sometime",
                                        style: const TextStyle(
                                            color: const Color(0xff8a959e),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.0),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 15),
                                child: CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  radius: 35,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'assets/images/jay.png',
                                        fit: BoxFit.fitHeight,
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jay Patel",
                                      style: const TextStyle(
                                          color: const Color(0xff262b2e),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        "complete your work, so good!",
                                        style: const TextStyle(
                                            color: const Color(0xff8a959e),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.0),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
