// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:amazonclone/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  final items = ['S', 'M', 'L', 'XL', 'XXL'];
  final colors = ['Red', 'Blue', 'Yellow', 'Grey', 'Black', 'White'];

  String? value;
  String? value2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(isIcon: false),
      body: SingleChildScrollView(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /*      Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Image.asset(
                        "images/image1.png",
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                      ),
                    ), */
                    ImageSlideshow(
                      children: [
                        Image.asset(
                          'images/samsung.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'images/samsung2.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'images/samsung3.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'images/samsung4.jpg',
                          fit: BoxFit.cover,
                        ),
                      ],
                      width: MediaQuery.of(context).size.width*0.99,
                       height: MediaQuery.of(context).size.height*0.46,
                       initialPage: 0,
                       indicatorColor: Colors.blue,
                       indicatorBackgroundColor: Colors.grey,
                       onPageChanged: (value) {
                          print('Page changed: $value');
                       },
                       isLoop: true,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    //color: const Color.fromARGB(52, 170, 170, 170),
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 30,
                          offset: const Offset(0, 14))
                    ])),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Icon(Icons.share),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.90, top: 10),
            child: const Icon(Icons.favorite_border),
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.47,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Samsung Gear S3",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.36,
                        right: 10),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "\$${320}",
                      style: const TextStyle(
                          fontSize: 20,
                          color:  Color.fromARGB(244, 36, 42, 75),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                              color: const Color.fromARGB(255, 224, 224, 224))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Size ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                    borderRadius: BorderRadius.zero,
                                    //elevation: 5,
                                    hint: const Text('',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    items: items.map(buildMenuItem).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        this.value = value!;
                                      });
                                    }),
                              ),
                            ),
                            if (value == null)
                              const Text('')
                            else
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Text(
                                  value!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                              color: const Color.fromARGB(255, 224, 224, 224))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Color ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                    borderRadius: BorderRadius.zero,
                                    hint: const Text(''),
                                    items: colors.map(buildMenuItem).toList(),
                                    onChanged: (value2) {
                                      setState(() {
                                        this.value2 = value2!;
                                      });
                                    }),
                              ),
                            ),
                            if (value2 == null)
                              const Text('')
                            else if (value2 == "Red")
                              Padding(
                                  padding: const EdgeInsets.only(left: 11),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 224, 224, 224))),
                                      height: 30,
                                      width: 30))
                            else if (value2 == "Yellow")
                              Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 224, 224, 224))),
                                      height: 30,
                                      width: 30))
                            else if (value2 == "White")
                              Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                      decoration:
                                          BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5.0), border: Border.all(color: const Color.fromARGB(255, 87, 84, 84))),
                                      height: 30,
                                      width: 30))
                            else if (value2 == "Black")
                              Padding(padding: const EdgeInsets.only(left: 10), child: Container(decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5.0), border: Border.all(color: const Color.fromARGB(255, 224, 224, 224))), height: 30, width: 30))
                            else if (value2 == "Grey")
                              Padding(padding: const EdgeInsets.only(left: 10), child: Container(decoration: BoxDecoration(color: Colors.grey.shade600, borderRadius: BorderRadius.circular(5.0), border: Border.all(color: const Color.fromARGB(255, 224, 224, 224))), height: 30, width: 30))
                            else if (value2 == "Blue")
                              Padding(padding: const EdgeInsets.only(left: 10), child: Container(decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(5.0), border: Border.all(color: const Color.fromARGB(255, 224, 224, 224))), height: 30, width: 30))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Brand Name:",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Samsung",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Material:",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Aluminium",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Style:",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Casual",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Season:",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "All Season",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Gender:",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Unisex",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.30,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Origin:",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "India",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(244, 36, 42, 75),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          color: const Color.fromARGB(255, 224, 224, 224))),
                  child: TextButton(
                      onPressed: () {
                        
                      },
                      child: const Text(
                        'Add to Cart ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            item,
            //style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20 )
          ),
        ),
      );
}
