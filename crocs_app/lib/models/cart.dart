import 'package:crocs_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoe available for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Flowery Crocs",
        price: "22",
        imagePath: "lib/images/crocs1.jpg",
        desc: "A flowery trendsetter"),
    Shoe(
        name: "Pumpkin Crocs",
        price: "25",
        imagePath: "lib/images/crocs2.jpg",
        desc: "Be THE pumpkin destroyer"),
    Shoe(
        name: "Astro Crocs",
        price: "24",
        imagePath: "lib/images/crocs3.jpg",
        desc: "To the moon and back!"),
    Shoe(
        name: "Basic C",
        price: "29",
        imagePath: "lib/images/crocs4.jpg",
        desc: "Classic is evergreen, Period."),
  ];

  //list of shoes in the cart
  List <Shoe> cart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get user cart
  List<Shoe> getCart(){
    return cart;
  }

  void addItem(Shoe shoe){
    cart.add(shoe);
    notifyListeners();
  }

  void removeItem(Shoe shoe){
    cart.remove(shoe);
    notifyListeners();
  }
}
