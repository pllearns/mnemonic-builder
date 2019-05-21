import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mnemonic Resetter'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Find a bound witness to reset your mnemonic'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MnemonicScanner()),
            );
          },
        ),
      ),
    );
  }
}

class MnemonicScanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Bound Witnesses")
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go back"),
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text("Scan for Bound Witnesses"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Scanner()),
                );
              } 
            )
          )
        ],
      ),
    );
  }
}

class Scanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scanning For Bound Witnesses'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go back and try again'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}