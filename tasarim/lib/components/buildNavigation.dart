import 'package:e_commerce_ui/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildNavigation(context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -3),
              color: Colors.black.withOpacity(0.70),
              blurRadius: 5),
        ],
        color: Color(0xffEFF5FB),
      ),
      width: double.infinity,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            child: navIkon(false, Icons.home_filled),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyApp();
              }));
            },
          ),
          navIkon(false, Icons.search),
          navIkon(false, Icons.shopping_basket),
          navIkon(false, Icons.person),
        ],
      ),
    ),
  );
}

Widget navIkon(@required bool active, @required IconData icon) {
  return Icon(
    icon,
    size: 22,
    color: Color(active ? 0xFF0001FC : 0xFF0A1034),
  );
}
