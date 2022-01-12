import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:receipe_book/background_decoration/bg_image.dart';
import 'home.dart';

class Splash_Screen extends StatefulWidget {
  Splash_Screen({Key? key}) : super(key: key);

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

// ignore: camel_case_types
class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    //set time to load the new page
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Home()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text("Your flavours"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const bg_image(),
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(child: Lottie.asset('assets/lottie/splash_lottie.json')),
              Text("𝕮𝖔𝖔𝖐 𝕭𝖔𝖔𝖐",
                  style: TextStyle(
                      color: Colors.red[100],
                      fontSize: 35,
                      fontWeight: FontWeight.bold)),
              Text("𝔅𝔯𝔦𝔫𝔤 𝔥𝔬𝔪𝔢 𝔱𝔥𝔢 𝔟𝔞𝔠𝔬𝔫",
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),

                      Text("𝔴𝔢 𝔞𝔩𝔴𝔞𝔶𝔰 𝔥𝔢𝔯𝔢 𝔣𝔬𝔯 𝔶𝔬𝔲",
                  style: TextStyle(
                      color: Colors.red[400],
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ]),
          )
        ],
      ));
}
