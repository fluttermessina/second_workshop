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
  void _buttonPressed() {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {},
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("My title"),
      content: const Text("This is my message."),
      actions: [
        okButton,
      ],
      elevation: 24,
      shape: const BeveledRectangleBorder(),
      backgroundColor: Colors.blueGrey[50],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              EachPage("First Screen", "assets/images/slider1.png"),
              EachPage("Second Screen", "assets/images/slider2.png"),
              EachPage("Third Screen", "assets/images/slider3.png"),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: _buttonPressed,
                      child: Text('Register'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Login'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                image,
                width: 600,
                height: 600,
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
      ),
    );
  }
}
