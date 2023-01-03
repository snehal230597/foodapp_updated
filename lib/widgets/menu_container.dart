import 'package:flutter/material.dart';
import 'button.dart';

class MenuContainer extends StatefulWidget {
  @override
  State<MenuContainer> createState() => _MenuContainerState();
}

int _itemCount = 0;

class _MenuContainerState extends State<MenuContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10),
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
                                  'https://scontent.fbom26-2.fna.fbcdn.net/v/t1.6435-9/69683166_2459293657635286_6113455435514118144_n.jpg?stp=cp0_dst-jpg_e15_p320x320_q65&_nc_cat=111&ccb=1-7&_nc_sid=2d5d41&_nc_ohc=j1KhFKSWQwAAX9NmRxe&_nc_ht=scontent.fbom26-2.fna&oh=00_AT-FGyievdvuVKRi0bR_foRhL4N_b_bMjmStfffCr9fOow&oe=62C52532')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text("Cheesy Roll Dhosa",
                                    style: TextStyle(
                                        color: Color(0xff262b2e),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Muli",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14.0),
                                    textAlign: TextAlign.left),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.24),
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
                                  ),
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
                                                if (_itemCount > 0) _itemCount--;
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
                                                child: Text(_itemCount.toString(),
                                                    style: const TextStyle(
                                                        color:
                                                            const Color(0xff262b2e),
                                                        fontWeight: FontWeight.w400,
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
                                      width:
                                          MediaQuery.of(context).size.width * 0.2),
                                  const Text(
                                    "₹99.00",
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
