import 'package:amazonclone/data.dart';
import 'package:flutter/material.dart';

class SingleProduct2 extends StatefulWidget {
  final String name;
  final String image;
  final String category;
  final int price;

  const SingleProduct2({
    Key? key,
    required this.image,
    required this.name,
    required this.category,
    required this.price,
  }) : super(key: key);

  @override
  State<SingleProduct2> createState() => _SingleProduct2State();
}

class _SingleProduct2State extends State<SingleProduct2> {
  Icon icon = Icon(Icons.favorite_border);
  Color color = Colors.black;
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
            child: Column(
              children: [
                /*  SizedBox(
                  width: MediaQuery.of(context).size.width * 0.30,
                ), */ // const SizedBox(width: 50,) ,
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (color == Colors.black &&
                            icon == Icon(Icons.favorite_border)) {
                          icon = Icon(Icons.favorite_border);
                          color = Colors.black;
                        } else {
                          color = Colors.red;
                          icon = const Icon(Icons.favorite);
                        }
                      });
                    },
                    icon: icon,
                    color: color,
                  ),
                ),

                Image.asset(
                  widget.image,
                  height: MediaQuery.of(context).size.width * 0.18,
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: const TextStyle(color: Colors.grey
                            //fontWeight: FontWeight.bold
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${widget.price}",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 153, 140, 24),
                                fontWeight: FontWeight.bold),
                          ),
                        /*   SizedBox(
                            width: MediaQuery.of(context).size.width * 0.28,
                          ),  */// const SizedBox(width: 50,) ,
                          Padding(
                            padding: const EdgeInsets.only(right:10 ),
                            child: const Icon(
                              Icons.add_box,
                              color: Color.fromARGB(255, 95, 94, 92),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
/*           Text(
            category,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ), */

          /* Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.grey
                      //fontWeight: FontWeight.bold
                      ),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$$price",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 153, 140, 24),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.33,
                    ), // const SizedBox(width: 50,) ,
                    Images.shop
                  ],
                )
              ],
            ),
            
            decoration: BoxDecoration(
                    color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 30,
          offset: Offset(0, 14)
        )]
      )
          ),  */
        ],
      ),
    );
  }
}
