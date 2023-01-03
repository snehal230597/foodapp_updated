import 'package:flutter/material.dart';
import 'package:food_app/widgets/information_container.dart';
import 'package:food_app/widgets/menu_container.dart';
import 'package:food_app/widgets/review_container.dart';

enum WidgetMarker { menu, review, information }

class SwitchButton extends StatefulWidget {
  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  WidgetMarker selectedWidgetMarker = WidgetMarker.menu;

  int buttonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedWidgetMarker = WidgetMarker.menu;
                    buttonIndex = 0;
                  });
                },
                child: Container(
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: buttonIndex == 0 ? Color(0xffFF2E36) : Color(0xffff2e36).withOpacity(0.1),
                  ),
                  child: Center(
                    child: Text(
                      "Menu",
                      style:  TextStyle(
                          color: buttonIndex == 0 ? Color(0xffffffff) : Color(0xfffe724e),
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(
                    () {
                      selectedWidgetMarker = WidgetMarker.review;
                      buttonIndex = 1;
                    },
                  );
                },
                child: Container(
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: buttonIndex == 1 ?   Color(0xffFF2E36)  : Color(0xffff2e36).withOpacity(0.1),
                  ),
                  child: Center(
                    child: Text(
                      "Review",
                      style:  TextStyle(
                          color: buttonIndex == 1 ? Color(0xffffffff) : Color(0xfffe724e),
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(
                    () {
                      selectedWidgetMarker = WidgetMarker.information;
                      buttonIndex = 2;
                    },
                  );
                },
                child: Container(
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: buttonIndex == 2 ? Color(0xffFF2E36)  :  Color(0xffff2e36).withOpacity(0.1)),

                  child: Center(
                    child: Text(
                      "Information",
                      style:  TextStyle(
                        color: buttonIndex == 2 ? Color(0xffffffff) : Color(0xfffe724e),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        getCustomContainer(),
      ],
    );
  }

  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.menu:
        return MenuContainer();
      case WidgetMarker.review:
        return ReviewContainer();
      case WidgetMarker.information:
        return InformationContainer();
    }
    return MenuContainer();
  }
}
