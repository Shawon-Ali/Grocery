import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:grocery/model/cart_model.dart';
import 'package:grocery/other_pages/payment.dart';
import 'package:provider/provider.dart';

class PayConfirm extends StatefulWidget {
  PayConfirm({super.key});

  @override
  State<PayConfirm> createState() => _PayConfirmState();
}

class _PayConfirmState extends State<PayConfirm> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bgclr,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.grey[800],
          ),
        ),
        body: Consumer<CartModel>(
          builder: (context, value, child) {
            return Container(
              color: mclr,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Price",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "\$${value.calculateTotal()}",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  MaterialButton(
                    minWidth: 250,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {},
                    color: bclr,
                    child: Text(
                      "Use promo code",
                      style: TextStyle(
                        fontSize: 20,
                        color: wclr,
                      ),
                    ),
                  ),
                
                  Column(
                    children: [
                        Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Payment Option",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          color: bgclr,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.green,
                                    )),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ListTile(
                                      leading: Radio(
                                        activeColor: bclr,
                                        value: 1,
                                        groupValue: _value,
                                        onChanged: (value) {
                                          setState(() {
                                            _value = value!;
                                          });
                                        },
                                      ),
                                      title: Text("Bkash",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500)),
                                      trailing: Image(
                                        image: AssetImage("images/bkash.png"),
                                        height: 50,
                                      ),
                                    ),
                                    Divider(
                                      color: dclr,
                                      thickness: 1,
                                    ),
                                    ListTile(
                                      leading: Radio(
                                        activeColor: bclr,
                                        value: 2,
                                        groupValue: _value,
                                        onChanged: (value) {
                                          setState(() {
                                            _value = value!;
                                          });
                                        },
                                      ),
                                      title: Text("Nagad",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500)),
                                      trailing: Image(
                                        image: AssetImage("images/nagad.png"),
                                        height: 50,
                                      ),
                                    ),
                                    Divider(
                                      color: dclr,
                                      thickness: 1,
                                    ),
                                    ListTile(
                                      leading: Radio(
                                        activeColor: bclr,
                                        value: 3,
                                        groupValue: _value,
                                        onChanged: (value) {
                                          setState(() {
                                            _value = value!;
                                          });
                                        },
                                      ),
                                      title: Text("Rocket",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500)),
                                      trailing: Image(
                                        image: AssetImage("images/roket.png"),
                                        height: 40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  
                 
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    height: 50,
                    minWidth: double.infinity,
                   onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder:(context) => payment()));
              },
                    color: bclr,
                    child: Text(
                      "Confime",
                      style: TextStyle(
                        fontSize: 20,
                        color: wclr,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
