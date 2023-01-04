import 'package:flutter/material.dart';
import 'package:food_app/comman_widgets/common_appbar.dart';
import 'package:food_app/widgets/button.dart';

import '../../utils/utils.dart';
import '../notification.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //using commomAppBar here....
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: CommonAppbar(
            fontColor: Colors.black,
            centerTitle: true,
            title: 'Favorite Items',
            backgroundColor: Colors.white,
            shadowColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
            fontWeight: FontWeight.w700,
            rPadding: 5,
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
            tIcon: IconButton(
              onPressed: () {
                Utils.routsfunction(context, NotificationScreen(), "push");
              },
              icon: const Icon(Icons.notifications),
              color: const Color(0xffFF2E36),
            ),
            isBackEnable: true),
      ),

      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 20),
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLZ7QCgUxDY93YL87go7RqwhaJWvgGHSoeYA&usqp=CAU')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text("Bombay grill-Three layer",
                                    style: TextStyle(
                                        color: Color(0xff262b2e),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Muli",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14.0),
                                    textAlign: TextAlign.left),
                                SizedBox(width: 50),
                                FavButton(),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                "sells food, either fresh,specie,chilli",
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffbc00),
                                    size: 16,
                                  ),
                                  Icon(Icons.star,
                                      color: Color(0xffffbc00), size: 16),
                                  Icon(Icons.star,
                                      color: Color(0xffffbc00), size: 16),
                                  Icon(Icons.star,
                                      color: Color(0xffffbc00), size: 16),
                                  Icon(Icons.star,
                                      color: Color(0xffffbc00), size: 16),
                                  SizedBox(width: 10),
                                  Text(
                                    "4.9",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
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
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.black12),
                                            child: const Center(
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.red,
                                                size: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 3),
                                          child: Container(
                                            width: 25,
                                            child: Center(
                                              child: FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                    _itemCount.toString(),
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xff262b2e),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 16.0),
                                                    textAlign: TextAlign.left),
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
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffFF2E36)),
                                            child: const Center(
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2),
                                  const Text(
                                    "₹199.00",
                                    style: TextStyle(
                                        color: Color(0xffff2e36),
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
          );
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    content: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Text(
              "        Are you sure  \n  you want to sign out?",
              style: TextStyle(
                  color: Color(0xff262b2e),
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(10)),
                          color: const Color(0xfffe2121).withOpacity(0.1)),
                      child: const Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              color: Color(0xfffe2121),
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (_) => SplashScreen()));
                    },
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [Color(0xffff461e), Color(0xffff1054)])),
                      child: const Center(
                        child: Text(
                          "Sure",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                ],
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
