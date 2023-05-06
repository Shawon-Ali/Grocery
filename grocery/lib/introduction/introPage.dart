import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:grocery/home/home_page.dart';
// import 'package:p105/pages/intro_pages.dart/home_page.dart';
// import 'package:p105/model/cart_model.dart';

import '../model/cart_model.dart';

class IntroPage extends StatelessWidget {
  //var bclr = Colors.brown;
  IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgclr,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 50, right: 50, bottom: 50, top: 100),
              child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset("images/gro.png")),
            ),
            const Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                "We deliver groceries at your home",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 24),
            Text(
              "Fresh Items Everyday",
            ),
            Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              )),
              child: Container(
                decoration: BoxDecoration(
                    color: bclr, borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(20),
                child: Text(
                  "Get Started",
                  style: TextStyle(color: wclr),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
