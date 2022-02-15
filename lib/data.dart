import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Images{
static SvgPicture menu = SvgPicture.asset('images/menu2.svg', height: 30, width: 30,);
static SvgPicture shop = SvgPicture.asset('images/shop.svg');
static SvgPicture pd = SvgPicture.asset('images/pd.svg');
static SvgPicture man = SvgPicture.asset('images/manss.svg');
static SvgPicture man2 = SvgPicture.asset('images/mans2.svg',height: 10,width: 10,);
static SvgPicture back = SvgPicture.asset('images/back.svg',width: 10, height: 10,);
static SvgPicture cart = SvgPicture.asset('images/cart.svg');
static SvgPicture amazonlogo = SvgPicture.asset('images/Amazon_logo.svg', height: 30, width: 30,);
static SvgPicture notify = SvgPicture.asset('images/notify.svg', height: 20,);
static SvgPicture notification = SvgPicture.asset('images/notification.svg', height: 20,);
static SvgPicture search = SvgPicture.asset('images/search-line.svg' ,height: 5, width: 5, );
static SvgPicture arrowleft = SvgPicture.asset('images/arrrow-left-line.svg',height: 10,width: 10,);
static SvgPicture slider = SvgPicture.asset('images/sliders.svg',height: 20, width: 30);
static SvgPicture slider1 = SvgPicture.asset('images/slider1.svg',height: 20, width: 30);
static SvgPicture slider2 = SvgPicture.asset('images/slider2.svg',height: 20, width: 30);
static SvgPicture slider3 = SvgPicture.asset('images/slider3.svg',height: 25, width: 25);
}

class RecommondedModel {
  final String image;
  final String name;
  final int price;

  RecommondedModel({
    required this.image,
    required this.name,
    required this.price,
  });
}
class RecommondedModel2 {
  final String image;
  final String name;

  RecommondedModel2({
    required this.image,
    required this.name,
  });
}


List<RecommondedModel2> recommndedImgList2 = [
  RecommondedModel2(image: "images/Man.png", name: "Man"),
  RecommondedModel2(image: "images/woman.png", name: "Woman"),
  RecommondedModel2(image: "images/gadgets.png", name: "Gadgets"),
  RecommondedModel2(image: "images/game.png", name: "Game"),
  RecommondedModel2(image: "images/electronics.png", name: "Electronics"),
];




List<RecommondedModel> recommndedImgList = [
  RecommondedModel(image: "images/image1.png", name: "Watch", price: 50),
  RecommondedModel(image: "images/image2.png", name: "Scooter", price: 700),
  RecommondedModel(image: "images/image3.png", name: "Echo Dot", price: 100),
  RecommondedModel(image: "images/image1.png", name: "Watch", price: 50),
  RecommondedModel(image: "images/image2.png", name: "Scooter", price: 700),
  RecommondedModel(image: "images/image3.png", name: "Echo Dot", price: 100),
];

List<RecommondedModel> singleProductImgList = [
  RecommondedModel(image: "images/image4.png", name: "Sofa", price: 80),
  RecommondedModel(image: "images/image5.png", name: "Chair", price: 30),
  RecommondedModel(image: "images/image6.png", name: "Table", price: 40),
  RecommondedModel(image: "images/image7.png", name: "Wall Shelf", price: 40),
];
class RecommondedModel3 {
  final String image;
    final String category;
      final String name;
  final int price;

  RecommondedModel3({
    required this.image,
        required this.category,
            required this.name,
    required this.price,
  });
}

List<RecommondedModel3> recommndedImgList3 = [
  RecommondedModel3(image: "images/image1.png",category:  "Samsung",name: "Watch", price: 50),
  RecommondedModel3(image: "images/image2.png",category:  "Electric", name: "Scooter", price: 700),
  RecommondedModel3(image: "images/image3.png",category:  "Amazon", name: "Echo Dot", price: 100),
  RecommondedModel3(image: "images/image1.png",category:  "Apple", name: "Watch", price: 50),
  RecommondedModel3(image: "images/image2.png",category:  "Hero", name: "Scooter", price: 700),
  RecommondedModel3(image: "images/image3.png",category:  "MI", name: "Echo Dot", price: 100),
  ];