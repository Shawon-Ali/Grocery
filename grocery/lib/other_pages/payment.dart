import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:grocery/model/cart_model.dart';
import 'package:grocery/other_pages/thank_u.dart';
import 'package:provider/provider.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {

  bool _obscureText = true;
  var fNameText = TextEditingController();
  var lNameText = TextEditingController();
  var emailText = TextEditingController();
  var phoneText = TextEditingController();
  var passwordText = TextEditingController();
//  String passwordError;
  final _formkey = GlobalKey<FormState>();

  var tbrd = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.green,
      ),
      borderRadius: BorderRadius.circular(25));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment",
          style: TextStyle(
            fontSize: 25,
            color: Colors.grey[700],
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: bgclr,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.grey[800],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: mclr,
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Account Details",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      controller: fNameText,
                     validator: (value) {
                       if (!value!.isEmpty)
                       return 'Enter First Name';
                     },
                      decoration: 
                      InputDecoration(
                        filled: true,
                        fillColor: bgclr,
                        hintText: "First Name",
                        disabledBorder: tbrd,
                        enabledBorder: tbrd,
                        focusedBorder: tbrd,
                        border: tbrd,
                      ),
                    ),
                  ),
                  Flexible(
                    child: TextFormField(
                      controller: lNameText,
                       validator: (value) {
                       if (!value!.isEmpty)
                       return 'Enter Last Name';
                     },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: bgclr,
                        hintText: "Last Name",
                        disabledBorder: tbrd,
                        enabledBorder: tbrd,
                        focusedBorder: tbrd,
                        border: tbrd,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                // validator: (email) {
                //   if (emailText.is)
                // },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: lNameText,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: bgclr,
                  hintText: "Email",
                  disabledBorder: tbrd,
                  enabledBorder: tbrd,
                  focusedBorder: tbrd,
                  border: tbrd,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: phoneText,
                 validator: (value) {
                     setState(() {
                         if (!value!.isEmpty)
                       return null;
                     });
                     },
                decoration: InputDecoration(
                 
                  filled: true,
                  fillColor: bgclr,
                  hintText: "Phone Number",
                  disabledBorder: tbrd,
                  enabledBorder: tbrd,
                  focusedBorder: tbrd,
                  border: tbrd,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (passwordText.text.isEmpty|| passwordText.text.length < 3)
                    
                    return null;
                
                },
                obscureText: _obscureText,
                controller: passwordText,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: bgclr,
                    // errorText: passwordError,
                    hintText: "Pin",
                    disabledBorder: tbrd,
                    enabledBorder: tbrd,
                    focusedBorder: tbrd,
                    border: tbrd,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off))),
              ),


              SizedBox(height: 10,),

              MaterialButton(
                  onPressed: () {
                    setState(() {
                      if (phoneText.text.isNotEmpty && passwordText.text.isNotEmpty) {
                
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ThankuPage()));
                      }
                    });
                    String fName = fNameText.text.toString();
                    String lName = lNameText.text.toString();
                    String uemail = emailText.text.toString();
                    String uPhone = phoneText.text.toString();
                    String uPass = passwordText.text.toString();
                    print(
                        "First Name:$fNameText, Last Name:$lNameText  Email:$emailText  Phone: $uPhone,pass: $uPass");
                  },
                  color: bclr,
                  child: Text(
                    "Pay",
                    style: TextStyle(
                      fontSize: 25,
                      color: wclr,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
