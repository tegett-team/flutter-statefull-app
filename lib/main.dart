import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyButtonState();
  }
}

class _MyButtonState extends State {
  String flutterText = "Flutter";
  List<String> collections = ["Flutter", "Es", "Genial"];
  int index = 1;

  void onPressedButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 2 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StatefulWidget"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // centrar vertical
            children: <Widget>[
              Text(flutterText, style: TextStyle(fontSize: 40)),
              Padding(
                padding: EdgeInsets.all(10), //padding a todo
              ),
              RaisedButton(
                child: Text("Actualizar"),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: onPressedButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}
