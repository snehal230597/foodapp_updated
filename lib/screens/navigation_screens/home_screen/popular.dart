import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/screens/product_details.dart';

class PopularList extends StatelessWidget {
  List<String> listImage = [
    "assets/images/cbhel.png",
    "assets/images/cbhel.png",
    "assets/images/cbhel.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: listImage.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext ctx, index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => ProductDetailScreen(image: "assets/images/cbhel.png")));
            },
            child: Card(
              margin: EdgeInsets.only(
                  left: 14, top: 25, bottom: 10, right: (index == 2) ? 15 : 0),
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Image.asset(
                            listImage[index],
                            alignment: Alignment.topCenter),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 8),
                    child: Text(
                      "Awesome Food Restaurant",
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 5),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/images/delivery_man.svg"),
                        SizedBox(width: 5),
                        Text(
                          "Free delivery",
                          style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontSize: 13.0),
                        ),
                        SizedBox(width: 10),
                        SvgPicture.asset("assets/images/icon_feather_clock.svg"),
                        SizedBox(width: 5),
                        Text(
                          "10-30 mins",
                          style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontSize: 13.0),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8),
                    child: Row(
                      children: [
                        Container(
                          width: 54,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xffffea127).withOpacity(0.1),
                          ),
                          child: Center(
                            child: Text(
                              "Burger",
                              style: const TextStyle(
                                  color: Color(0xffffbc00),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 60,
                          height: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Color(0xfffe2121).withOpacity(0.1)),
                          child: Center(
                            child: Text("Pizza",
                                style: const TextStyle(
                                    color: Color(0xfffe2121),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0),
                                textAlign: TextAlign.center),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 70,
                          height: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color:Color(0xff1dbf73).withOpacity(0.1)),
                          child: Center(
                            child: Text(
                              "Fast Food",
                              style: const TextStyle(
                                  color:Color(0xff1dbf73),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
