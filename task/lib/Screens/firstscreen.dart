import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/Const/iamges.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:task/Screens/SecondScreen.dart';

class First_screen extends StatefulWidget {
  const First_screen({super.key});

  @override
  State<First_screen> createState() => _First_screenState();
}

class _First_screenState extends State<First_screen> {
  bool myoption = false;
  bool myoption1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Choose App Language",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text("Please select your preferred language"),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2,
                      color: myoption == true ? Colors.green : Colors.white),
                  color: myoption == true ? Colors.green[50] : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    myoption == true
                        ? BoxShadow(blurRadius: 3, color: Colors.green)
                        : BoxShadow(
                            blurRadius: 2,
                          )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundImage: AssetImage(ukflag),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("English"),
                      ],
                    ),
                    RoundCheckBox(
                        size: 25,
                        checkedColor: Colors.green,
                        uncheckedColor: Colors.white,
                        isChecked: myoption,
                        onTap: (bool? select) {
                          setState(() {
                            myoption = select!;
                          });
                        })
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2,
                      color: myoption1 == true ? Colors.green : Colors.white),
                  color: myoption1 == true ? Colors.green[50] : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    myoption1 == true
                        ? BoxShadow(blurRadius: 3, color: Colors.green)
                        : BoxShadow(
                            blurRadius: 2,
                          )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundImage: AssetImage(flag),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Gujarati"),
                      ],
                    ),
                    RoundCheckBox(
                        size: 25,
                        checkedColor: Colors.green,
                        uncheckedColor: Colors.white,
                        isChecked: myoption1,
                        onTap: (bool? select) {
                          setState(() {
                            myoption1 = select!;
                          });
                        })
                  ],
                ),
              ),
            ),
            //Spacer(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Second_Screen()));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(background),
            )
          ],
        ),
      ),
    );
  }
}
