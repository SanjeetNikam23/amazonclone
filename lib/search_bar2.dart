import 'package:amazonclone/data.dart';
import 'package:flutter/material.dart';

class SearchBar2 extends StatelessWidget {
  const SearchBar2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.2,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          TextFormField(
          decoration: InputDecoration(
            hintText: "What are you looking for?",
            fillColor: Colors.white,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Images.search,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide.none
            ),
            filled: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(300, 5, 0, 0),
          child: MaterialButton(onPressed:() {  
          }, 
          minWidth: 20,
          color: const Color.fromARGB(255, 82, 77, 90),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Images.slider3,
          ),
        )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 30,
          offset: const Offset(0, 14)
        )]
      )
    );
  }
}