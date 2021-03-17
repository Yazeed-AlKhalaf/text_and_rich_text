import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showRichText = false;

  @override
  Widget build(BuildContext context) {
    Widget _buildText() {
      return Text(
        "I love Flutter so much 💙",
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
        ),
      );
    }

    Widget _buildRichText() {
      return SelectableText.rich(
        TextSpan(
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
          children: <InlineSpan>[
            TextSpan(
              text: "I",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: " love "),
            TextSpan(
              text: "Flutter",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            TextSpan(text: " so "),
            TextSpan(
              text: "much",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w100,
              ),
            ),
            TextSpan(text: " 💙"),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: showRichText ? _buildRichText() : _buildText(),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                showRichText = !showRichText;
              });
            },
            child: Text(
              showRichText ? "Show Text" : "Show Rich Text",
            ),
          ),
        ],
      ),
    );
  }
}
