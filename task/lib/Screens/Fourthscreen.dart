import 'package:flutter/material.dart';
import 'package:task/Screens/Third_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class Fourth_Screen extends StatefulWidget {
  const Fourth_Screen({super.key});

  @override
  State<Fourth_Screen> createState() => _Fourth_ScreenState();
}

class _Fourth_ScreenState extends State<Fourth_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ThirdScreen()));
              },
              child: Container(
                height: 30,
                width: 30,
                padding: const EdgeInsets.symmetric(horizontal: 7),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [BoxShadow(blurRadius: 3)],
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(child: Icon(Icons.arrow_back_ios)),
              ),
            ),
            20.heightBox,
            "Tell us your name".text.size(24).bold.make(),
            "enter your name as seen on your profile ".text.make(),
            20.heightBox,
            const TextField(),
            const Spacer(),
            GestureDetector(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
                child: "Continue".text.white.bold.size(24).makeCentered(),
              ),
            )
          ],
        ),
      )),
    );
  }
}
