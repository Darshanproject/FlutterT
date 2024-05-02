import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:task/Screens/Fourthscreen.dart';
import 'package:task/Screens/SecondScreen.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:velocity_x/velocity_x.dart';


class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
//  OtpFieldController  otpbox = OtpFieldController;
  final CountdownController1 = new CountdownController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    starttimer();
  }

  void starttimer() {
    CountdownController1.start();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Second_Screen()));
                },
                child: Container(
                  height: 30,
                  width: 30,
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 3)],
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(child: Icon(Icons.arrow_back_ios)),
                ),
              ),
              20.heightBox,
              "OTP Verifaction"
                  .text
                  .size(24)
                  .fontWeight(FontWeight.bold)
                  .make(),
              "Enter the verifaction code we just sent on your phone number"
                  .text
                  .size(19)
                  .make(),
              15.heightBox,
              OtpTextField(
                alignment: Alignment.center,
                numberOfFields: 6,
                fieldHeight: 50,
                borderRadius: BorderRadius.circular(12),
                fieldWidth: 50,
                textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                borderColor: Colors.black,
                showFieldAsBox: true,
              ),
              50.heightBox,
              GestureDetector(
                onTap: () {
                  // if (controllers.toString() == 123456) {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (BuildContext context) =>
                  //               Fourth_Screen()));
                  // }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Fourth_Screen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)),
                  height: 50,
                  width: context.screenWidth - 40,
                  child: "Verify"
                      .text
                      .white
                      .size(24)
                      .fontWeight(FontWeight.bold)
                      .makeCentered(),
                ),
              ),
              20.heightBox,
              Countdown(
                controller: CountdownController1,
                seconds: 30,
                build: (BuildContext context, double time) => Text(
                  "Resend OTP in" + ' ' + time.toString(),
                  style: TextStyle(fontSize: 18),
                ),
                interval: Duration(milliseconds: 00),
                onFinished: () {
                  "Resend the OTP".text.fontWeight(FontWeight.bold).make();
                },
              ).box.makeCentered(),
              "Resend OTP".text.makeCentered()
            ],
          ),
        ),
      ),
    );
  }
}
