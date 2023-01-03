import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/screens/restaurant_profile.dart';

class NearByList extends StatelessWidget {
  List<String> listImage = [
    "https://p4.wallpaperbetter.com/wallpaper/698/474/361/dinner-food-pie-pizza-wallpaper-preview.jpg",
    "https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8M3w5MzcxOTEzfHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
    "https://images7.alphacoders.com/596/596343.jpg",
    "https://res.cloudinary.com/twenty20/private_images/t_watermark-criss-cross-10/v1592406418000/photosp/81575e6e-c644-4579-8be5-88b3dd74e6eb/stock-photo-pizza-images-cartoon-cheese-pizza-images-pizza-images-clipart-pizza-imagesfunny-pizza-hut-images-pizza-pic-real-pizza-pics-in-home-pizza-slice-images-page-navigation-81575e6e-c644-4579-8be5-88b3dd74e6eb.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: listImage.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => RestaurantProfile(image: "assets/images/cbhel.png",)));
              },
              child: Card(
                margin: EdgeInsets.only(left: 15, right: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 125,
                      width: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.network(listImage[index])),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Awesome Food Restaurants",
                            style: const TextStyle(
                                color:  const Color(0xff000000),
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Container(
                                    height: 15,
                                    width: 15,
                                    child: SvgPicture.asset('assets/images/position_pin.svg')),
                                SizedBox(width: 5),
                                Text(
                                  "13th Street. 47 W 13th St, RU",
                                  style: const TextStyle(
                                      color:  const Color(0xff000000),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Container(
                                    height: 13,
                                    width: 13,
                                    child: SvgPicture.asset("assets/images/icon_feather_clock.svg")),
                                SizedBox(width: 5),
                                Text(
                                    "5 min",
                                    style: const TextStyle(
                                        color:  const Color(0xff000000),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.0
                                    ),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.circle, size: 5, color: Colors.red),
                                SizedBox(width: 5),
                                Text(
                                    "1.7 km",
                                    style: const TextStyle(
                                        color:  const Color(0xff000000),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.0
                                    ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Color(0xffffbc00),
                                              size: 22,
                                            ),
                                            Icon(Icons.star,
                                                color: Color(0xffffbc00), size: 22),
                                            Icon(Icons.star,
                                                color: Color(0xffffbc00), size: 22),
                                            Icon(Icons.star,
                                                color: Color(0xffffbc00), size: 22),
                                            Icon(Icons.star,
                                                color: Color(0xffffbc00), size: 22),
                                            SizedBox(width: 10),
                                            Text(
                                              "(4.7)",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        );
      },
    );
  }
}

