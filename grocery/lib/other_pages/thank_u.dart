import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:grocery/home/home_page.dart';
import 'package:grocery/model/cart_model.dart';


class ThankuPage extends StatelessWidget {
   ThankuPage({super.key});
  double screenWidth = 600;
  double screenHeight = 400;
  Color textColor = const Color(0xFF32567A);
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: InkWell(
        onTap: () 
          {
          Navigator.of(context).push(MaterialPageRoute(builder:(context) => HomePage()));
        },
        child: Container(
          color: bclr,
          child: Align(alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 170,
                  padding: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    //Color themeColor = const Color(0xFF43D19E);
                    color: bgclr,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    "images/card.png",
                    fit: BoxFit.contain,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenHeight * 0.1),
                Text(
                  "Thank You!",
                  style: TextStyle(
                    //Color themeColor = const Color(0xFF43D19E);
                    color: bgclr,
                    fontWeight: FontWeight.w600,
                    fontSize: 36,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  "Payment done Successfully",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
                Text(
                  "lick here to return to home page",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}