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
    return PageView(children: [
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.red,
      ),
    ]);
  }
}
