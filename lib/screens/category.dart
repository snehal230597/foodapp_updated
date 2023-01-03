import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/screens/category_screens/breakfast_list_screen.dart';

class CategoryScreen extends StatelessWidget {
  final List<String> categoryImage = [
    "assets/images/c_bowl.svg",
    "assets/images/c_fish.svg",
    "assets/images/c_coffe.svg",
    "assets/images/c_tea.svg",
    "assets/images/capple.svg",
    "assets/images/c_bottel.svg",
    "assets/images/c_unshape.svg",
    "assets/images/c_burger.svg",
  ];
  final List<String> categoryTitle = [
    "Breakfast",
    "Meat & Fish",
    "Bakery & Pasta",
    "Tea & Coffee",
    "Fresh Fruits",
    "Beverage",
    "Sandwich",
    "Burgers",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Category',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(left: 15, right: 15, top: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: categoryImage.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => BreakfastListScreen()));
                    },
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child:
                          Center(child: SvgPicture.asset(categoryImage[index])),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text(
                    categoryTitle[index],
                    style: const TextStyle(
                        color: const Color(0xff262b2e),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
