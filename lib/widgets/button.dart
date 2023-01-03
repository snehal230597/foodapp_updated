import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FavButton extends StatefulWidget {
  const FavButton({Key? key}) : super(key: key);


  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  bool _isFav = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(
          () {
           if(_isFav == false){
             showAlertDialog1(context) ;
           } else if (_isFav == true){
             Fluttertoast.showToast(
                 msg: "item added",
                 textColor: Colors.white,
                 fontSize: 16.0);
                 _isFav = !_isFav;
           }
          },
        );
      },
      child: _isFav
          ? const Icon(Icons.favorite_outline, color: Colors.black54)
          : const Icon(Icons.favorite, color: Colors.red),
    );
  }
  showAlertDialog1(BuildContext context) {
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
                "        Are you sure  \n  you want to Unfavorite?",
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
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                        Navigator.of(context).pop();
                        Fluttertoast.showToast(
                            msg: "item removed",
                            textColor: Colors.white,
                            fontSize: 16.0);
                        setState(() {
                          _isFav = !_isFav;
                        });
                      },
                      child: Container(
                        width: 120,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              Color(0xffff461e),
                              Color(0xffff1054)
                            ],
                          ),
                        ),
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
}

class PlusButton extends StatefulWidget {
  @override
  State<PlusButton> createState() => _PlusButtonState();
}

class _PlusButtonState extends State<PlusButton> {
  bool _isFav = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isFav = !_isFav;
        });
      },
      child: _isFav
          ? SvgPicture.asset('assets/images/plus.svg',
              height: 18, width: 18, color: Colors.red)
          : SvgPicture.asset('assets/images/plus.svg',
              height: 18, width: 18, color: Colors.black),
    );
  }
}

class CheckButton extends StatefulWidget {
  @override
  State<CheckButton> createState() => _CheckButtonState();
}

bool _isCheck = false;

class _CheckButtonState extends State<CheckButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isCheck = !_isCheck;
        });
      },
      child: _isCheck
          ? Container(
              height: 18,
              width: 18,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffFF2E36)),
              child: const Center(
                child: Icon(Icons.done, color: Colors.white, size: 15),
              ),
            )
          : Container(
              height: 18,
              width: 18,
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              child: const Center(
                child: Icon(Icons.done, color: Colors.white, size: 15),
              ),
            ),
    );
  }
}


