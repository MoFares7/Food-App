import 'package:flutter/material.dart';

String select = '1 - 2 مليون';
List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("3 - 4"), value: " مليون 3 - 4"),
    const DropdownMenuItem(child: Text("4 - 5"), value: "4 - 5 مليون"),
    const DropdownMenuItem(child: Text("5 - 6 "), value: "5 - 6 مليون"),
    const DropdownMenuItem(child: Text("أكثر من 6"), value: " مليون أكثر من 6"),
  ];
  return menuItems;
}
