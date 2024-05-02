import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:task/Screens/Third_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class Second_Screen extends StatefulWidget {
  const Second_Screen({super.key});

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Hi, Welcome ! 👋",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Give Us your \nMobile Number",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  10.heightBox,
                  Text("to login , we need your mobile number"),
                ],
              ).box.width(context.screenWidth).make(),
              TextField(
                keyboardType: TextInputType.number,
              ),
              Checkbox(
                  activeColor: Colors.green,
                  value: select,
                  onChanged: (value) {
                    setState(() {
                      select = value!;
                    });
                  }),
              "I have agreed to terms and condtions".text.make(),
              10.heightBox,
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ThirdScreen()));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text(
                      "Send OTP",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
