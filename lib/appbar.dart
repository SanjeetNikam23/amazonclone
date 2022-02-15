// ignore_for_file: prefer_const_constructors

import 'package:amazonclone/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar appBar({bool isIcon = true, Function()? onTap,bool product=false}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:  SizedBox(
            width: 10,
            height: 10,
            child: isIcon? Images.menu : Images.back),
        )),
    centerTitle: true,
    title: SizedBox(
      width: 100,
      height: 100,
      child:  product? (isIcon? Images.amazonlogo :  Images.man2): Images.man2 ) ,
    actions: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          width: 20,
          height: 30,
          child: isIcon? Images.notify : Images.cart),
      )
    ],
  );
}
