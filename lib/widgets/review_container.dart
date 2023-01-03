import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewContainer extends StatefulWidget {
  @override
  State<ReviewContainer> createState() => _ReviewContainerState();
}

class _ReviewContainerState extends State<ReviewContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                //  color: Colors.lime,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQawasI--bV6eBEGRGB4LKuAGglvNSoJX2lsw&usqp=CAU'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jhon Smith",
                                      style: const TextStyle(
                                          color: const Color(0xff2a3b56),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Color(0xffffbc00), size: 20),
                                          Icon(Icons.star,
                                              color: Color(0xffffbc00), size: 20),
                                          Icon(Icons.star,
                                              color: Color(0xffffbc00), size: 20),
                                          Icon(Icons.star,
                                              color: Color(0xffffbc00), size: 20),
                                          Icon(Icons.star,
                                              color: Color(0xffffbc00), size: 20),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Yesterday 10:30",
                            style: const TextStyle(
                                color: const Color(0xff8a94a3),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "I enjoyed the food of the restaurant. The dishes are attractive and very beautiful",
                          style: const TextStyle(
                              color: const Color(0xff8a8d9f),
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: FittedBox(
                                    fit: BoxFit.cover,
                                    child: Image.network(
                                        'https://scontent.fbom26-2.fna.fbcdn.net/v/t1.6435-9/69683166_2459293657635286_6113455435514118144_n.jpg?stp=cp0_dst-jpg_e15_p320x320_q65&_nc_cat=111&ccb=1-7&_nc_sid=2d5d41&_nc_ohc=j1KhFKSWQwAAX9NmRxe&_nc_ht=scontent.fbom26-2.fna&oh=00_AT-FGyievdvuVKRi0bR_foRhL4N_b_bMjmStfffCr9fOow&oe=62C52532')),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 60,
                                width: 60,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: Image.network(
                                          'https://scontent.fbom26-2.fna.fbcdn.net/v/t1.6435-9/69683166_2459293657635286_6113455435514118144_n.jpg?stp=cp0_dst-jpg_e15_p320x320_q65&_nc_cat=111&ccb=1-7&_nc_sid=2d5d41&_nc_ohc=j1KhFKSWQwAAX9NmRxe&_nc_ht=scontent.fbom26-2.fna&oh=00_AT-FGyievdvuVKRi0bR_foRhL4N_b_bMjmStfffCr9fOow&oe=62C52532')),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: FittedBox(
                                    fit: BoxFit.cover,
                                    child: Image.network(
                                        'https://scontent.fbom26-2.fna.fbcdn.net/v/t1.6435-9/69683166_2459293657635286_6113455435514118144_n.jpg?stp=cp0_dst-jpg_e15_p320x320_q65&_nc_cat=111&ccb=1-7&_nc_sid=2d5d41&_nc_ohc=j1KhFKSWQwAAX9NmRxe&_nc_ht=scontent.fbom26-2.fna&oh=00_AT-FGyievdvuVKRi0bR_foRhL4N_b_bMjmStfffCr9fOow&oe=62C52532')),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: DottedLine(
                      dashColor: Color(0xff181818).withOpacity(0.2),
                      lineThickness: 2.5,
                      dashLength: 6),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
