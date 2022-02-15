import 'package:amazonclone/data.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String name;
  final String image;
  final String category;
  final int price;

  const SingleProduct({
    Key? key,
    required this.image,
    required this.name,
    required this.category,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width * 0.47,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff37475A).withOpacity(0.2),
                    blurRadius: 20.0,
                    offset: const Offset(0, 10),
                  )
                ]),
            child: Image.asset(
              image,
               height: MediaQuery.of(context).size.width * 0.3,
                                  width: MediaQuery.of(context).size.width * 0.3,
            ),
          ),
          SizedBox(height: 10),
          Text(
            category,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.grey
                //fontWeight: FontWeight.bold
                ),
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
          Text(
            "\$$price",
            style: const TextStyle(
              color: Color.fromARGB(255, 153, 140, 24),
              fontWeight: FontWeight.bold
            ),
          ),
               SizedBox(
                 width: MediaQuery.of(context).size.width*0.33,
               ),     // const SizedBox(width: 50,) ,
               Images.shop
             ],
           )
        ],
      ),
    );
  }
}
