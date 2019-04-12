
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }

}

class HomeState extends State {
  final TextEditingController _weightController = new TextEditingController();
  int radioValue =0;
  double _finalResult = 0.0;

  void handleRadioValueChanged(int value)
  {
    setState(() {
      radioValue = value;

      switch(radioValue) {
        case 0:
          _finalResult: Calculate(_weightController.text, 0.06);
          break;
        case 1:
          _finalResult: Calculate(_weightController.text, 0.38);
          break;
        case 0:
          _finalResult: Calculate(_weightController.text, 0.91);
          break;
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("xplanet"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      backgroundColor: Colors.black87,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(2.5),
          children: <Widget>[
            new  Image.asset('images/Untitled-1.png',height: 133.0,width: 200.0,),
            new  Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      labelText: 'your weight on earth',
                      hintText: 'In ponds',
                      icon: new Icon(Icons.person_outline),

                    )
                  ),
                  new Padding(padding: new EdgeInsets.all(5.0)),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Radio<int>(activeColor:Colors.deepOrange,value: null, groupValue: radioValue, onChanged: handleRadioValueChanged),
                      new Text("pluto", style: TextStyle(color: Colors.white),),
                      new Radio<int>(activeColor:Colors.deepOrange,value: null, groupValue: radioValue, onChanged: handleRadioValueChanged),
                      new Text("Mars", style: TextStyle(color: Colors.white),),
                      new Radio<int>(activeColor:Colors.deepOrange,value: null, groupValue: radioValue, onChanged: handleRadioValueChanged),
                      new Text("Venus", style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  new Padding(padding: new EdgeInsets.all(15.6)),
                  new Text("$_finalResult", style: TextStyle(color: Colors.white ),
                  )
                ],
              ),
            )


          ],

        ),
      ),
    );


  }

  double Calculate(String t, double d) {

    if(int.parse(t).toString().isNotEmpty && int.parse(t) > 0) {
      return int.parse(t) * d;
    }else
      {
        print("wromg");
            return int.parse("180") * 0.38;
      }
  }


}