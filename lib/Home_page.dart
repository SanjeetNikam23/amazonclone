// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_field
import 'package:amazonclone/Product_details.dart';
import 'package:amazonclone/appbar.dart';
import 'package:amazonclone/categories.dart';
import 'package:amazonclone/data.dart';
import 'package:amazonclone/search_bar.dart';
import 'package:amazonclone/single_product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(product: true),
      body: GestureDetector(
        onTap: () {
          Focus.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SearchBar(
                  isIcon: true,
                ),
                Padding(
                  //padding:  EdgeInsets.symmetric(horizontal: size.width * 0.1 -20),
                  padding: EdgeInsets.all(2),
                  child: ListTile(
                    leading: Text(
                      'Categories',
                      style: TextStyle(
                          fontFamily: "CsFont",
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  child: ListView.builder(
                    // shrinkWrap: true,
                    //  physics: ClampingScrollPhysics(),
                    itemCount: recommndedImgList2.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      RecommondedModel2 data1 = recommndedImgList2[index];
                      return Categories(
                          image: data1.image, name: data1.name, onTap: () {});
                    },
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()));
                        },
                        child: Text("Top Selling",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Csfonts",
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.55,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontFamily: "Csfonts",
                        fontSize: 15,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 250,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        //shrinkWrap: true,
                        // physics: ClampingScrollPhysics(),
                        itemCount: 5, controller: _scrollController2,
                        itemBuilder: (BuildContext context, int index) {
                          RecommondedModel3 data = recommndedImgList3[index];

                          return SingleProduct(
                              image: data.image,
                              name: data.name,
                              category: data.category,
                              price: data.price);
                        },
                      ),
                    ),
                  ),
                ),
                /*  Expanded(
                  child: Container(
                    height: 150,
                    child: ListView.builder(
                      controller: _scrollController2,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: recommndedImgList3.length,
                      itemBuilder: (context, index) {
                        RecommondedModel3 data = recommndedImgList3[index];
                        return SingleProduct(
                            image: data.image,
                            category: data.category,
                            name: data.name,
                            price: data.price);
                      },
                    ),
                  ),
                ),
             */
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        mouseCursor: SystemMouseCursors.grab,
        backgroundColor: Color.fromARGB(255, 82, 77, 90),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,
                color: Color.fromARGB(255, 211, 201, 201)),

            label: "",
            //backgroundColor: Color.fromARGB(255, 255, 112, 77)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined,
                color: Color.fromARGB(255, 211, 201, 201)),
            label: "",
            //backgroundColor: Color.fromARGB(255, 255, 112, 77)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined,
                color: Color.fromARGB(255, 211, 201, 201)),
            label: "",
            //backgroundColor: Color.fromARGB(255, 255, 112, 77)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline,
                color: Color.fromARGB(255, 211, 201, 201)),
            label: "",
            //backgroundColor: Color.fromARGB(255, 255, 112, 77)
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Color.fromARGB(255, 211, 201, 201),
            ),
            label: "",
            //backgroundColor: Color.fromARGB(255, 255, 112, 77)
          ),
        ],
        type: BottomNavigationBarType.fixed,
        //currentIndex: _pageIndex,
        iconSize: 30,
        //onTap: onTabTapped,
        elevation: 2,
        //fixedColor: const Color.fromARGB(255, 255,112, 77),
      ),
    );
  }
}
