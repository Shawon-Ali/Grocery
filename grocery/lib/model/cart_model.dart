import 'package:flutter/material.dart';

var bclr = Colors.brown;
var wclr = Colors.white;
var bgclr = Colors.amber[100];
var mclr = Colors.blueGrey;
var dclr = Colors.black;

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _payshopment = const [
     ["Bkash","images/bkash.png"],
  ["Nagad", "images/nagad.png"],

  ["Other","images/other.png"],
  ];
 
  final List _shopItem = const [
    // [ itemName, itemPrice, imagePath, color ]
    [ "Avocado","4.00","images/avocado.png", ],
    ["Banana","2.50","images/banana.png",],
    ["Chicken","12.80","images/chicken.jpg",],
    ["Water","1.00","images/water.png",],
    ["Cow meat","4.00","images/cow.png",],
    ["Rice","2.50","images/rice.png",],
    ["Water","12.80","images/water.png",],
    ["Milk","4.00","images/milk.png",],
  ];
  // list of cart items
  List _cartItem = [];

  get cartItem => _cartItem;

  get shopItem => _shopItem;

  // add item to cart
  void addItemToCart(int index) {
    _cartItem.add(_shopItem[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItem.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItem.length; i++) {
      totalPrice += double.parse(cartItem[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
