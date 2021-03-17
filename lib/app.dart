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
      return Text("I love Flutter so much 💙");
    }

    Widget _buildRichText() {
      return Text("I love Flutter so much 💙");
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
