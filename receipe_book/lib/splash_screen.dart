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
    Future.delayed(const Duration(seconds: 7), () {
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
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Center(child: Lottie.asset('assets/lottie/splash_lottie.json')),
              Text("ઘરનો સ્વાદ",
                  style: TextStyle(
                      color: Colors.red[100],
                      fontSize: 29,
                      fontWeight: FontWeight.bold)),
            ]),
          )
        ],
      ));
}
