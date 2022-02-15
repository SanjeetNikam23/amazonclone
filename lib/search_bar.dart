// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:amazonclone/data.dart';
import 'package:amazonclone/second_page.dart';
import 'package:flutter/material.dart';
bool? isIcon;
class SearchBar extends StatelessWidget {
  
  bool isIcon;

   SearchBar({ Key? key, required this.isIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(5),
      //alignment: Alignment.topLeft,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 6),
          child: SizedBox(
            width: isIcon? MediaQuery.of(context).size.width*0.80 : MediaQuery.of(context).size.width*0.95,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "What are you looking for?",
                fillColor: Colors.white,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isIcon? Images.search : Text(''),
                  
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: isIcon? Text('') : Images.search,
                  
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none
                ),
                filled: true,
              ),
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.fromLTRB(348, 6, 0, 0),
          child: SizedBox(
            width:55,
            height: 60,
            child: isIcon? MaterialButton(onPressed:() {
              Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SecondPage()));
            }, 
            //minWidth: 20,
            color: Color.fromARGB(255, 255, 255, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: SizedBox(
              height: 50,
              width: 50,
              child: isIcon? Image.asset("images/slidernew.png"): Text('')),
            ): null,
          ),
        ) 
        //SizedBox(width: MediaQuery.of(context).size.width,),

       // IconButton(onPressed: (){}, icon: Icon(Icons.filter))
      ]
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 30,
          offset: Offset(0, 14)
        )]
      )
    );
  }
}