import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
    // TODO: implement createState
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;

  void _rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: new Text('MakeItState'),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
                child: new Text("get rich",
                    style: new TextStyle(
                        fontSize: 50.4, color: Colors.lightGreen))),
            new Expanded(
                child: new Center(
                  child: new Text(
                    "$_moneyCounter rs",
                    style: new TextStyle(color: _moneyCounter > 39000
                        ? Colors.lightGreen
                        : Colors.deepOrangeAccent, fontSize: _moneyCounter > 200 ?
                        30.8:60.5),
                  ),
                )),
            new Expanded(
                child: new Center(
                  child: new FlatButton(
                      color: Colors.deepOrange,
                      onPressed: _rainMoney,
                      child: new Text(
                        "let be rich",
                        style: new TextStyle(fontSize: 19.6),
                      )),
                ))
          ],
        ),
      ),
    );
    // TODO: implement build
  }
}
