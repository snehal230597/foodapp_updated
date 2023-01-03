import"package:flutter/material.dart";

class Utils{

  static Future routsfunction(
      BuildContext context, Widget routs, String type) async {
    if (type == "pushReplacement") {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => routs));
    } else if (type == "push") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => routs));
    } else if (type == "pushAndRemoveUntil") {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => routs,
          ),
              (route) => false);
    }else if(type == "back"){
      Navigator.of(context).pop();
    }
  }

}