import 'package:flutter/material.dart';

class bg_image extends StatelessWidget {
  const bg_image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/splash_bg.jpg', fit: BoxFit.cover,
    color: Colors.black.withOpacity(0.9),
    colorBlendMode: BlendMode.darken,);
  }
}