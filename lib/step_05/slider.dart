import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroSlider(),
    );
  }
}

class IntroSlider extends StatefulWidget {
  @override
  State<IntroSlider> createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [
        EachPage("First Screen", "assets/images/slider1.png"),
        EachPage("Second Screen", "assets/images/slider2.png"),
        EachPage("Third Screen", "assets/images/slider3.png"),
      ]),
    );
  }
}

class EachPage extends StatelessWidget {
  final String message;
  final String image;

  const EachPage(this.message, this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              width: 200,
              height: 200,
            ),
            Text(
              message,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
