import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/screens/category.dart';

class CategoryList extends StatelessWidget {
  List<String> listImage = [
    "assets/images/muffin.svg",
    "assets/images/chicken.svg",
    "assets/images/coffe.svg",
    "assets/images/food.svg",
    "assets/images/plus.svg",
  ];
  List<String> listText = [
    "Cake",
    "Food",
    "Drinks",
    "Snacks",
    "More",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 140,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: listImage.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext ctx, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  if (index == 4) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CategoryScreen(),
                      ),
                    );
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(
                      left: 15,
                      top: 20,
                      bottom: 10,
                      right: (index == 4) ? 15 : 0),
                  height: 75,
                  width: 75,
                  decoration: (index == 0)
                      ? BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffFF2E36))
                      : BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black12),
                  child: Center(
                    child: Container(
                      height: 40,
                      width: 40,
                      child: FittedBox(
                        child: SvgPicture.asset(listImage[index],
                            color: index == 4 ? Colors.red : null),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    listText[index],
                    style: const TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
