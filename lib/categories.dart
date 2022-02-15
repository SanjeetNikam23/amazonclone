// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String name;
  final String image;

  final Function()? onTap;

  const Categories({
    Key? key,
    required this.image,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            height: 50,
            width: 90,
            margin: const EdgeInsets.only(right: 10,bottom: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey.shade200)),
            child: Center(child: Image.asset(image, fit: BoxFit.cover,))),
        const SizedBox(height: 3),
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold),)
      ],
    );
  }
}
