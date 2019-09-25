import 'package:flutter/material.dart';

import './BaseButton.dart';

void main() => runApp(new MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedTeamIndex;

  List<String> _teams = [
    "Manchester United",
    "Barcelona",
    "Real Madrid",
    "Chelsea"
  ];

  void _clickOnClick(BuildContext tempContext) {
    setState(() {
      SnackBar snackBar = new SnackBar(
        backgroundColor: Colors.lightBlueAccent,
        content: new Text("You Selected " + _teams[_selectedTeamIndex]),
        action: SnackBarAction(
          label: "OK",
          onPressed: () {
            Scaffold.of(tempContext).hideCurrentSnackBar();
          },
        ),
      );
      Scaffold.of(tempContext).showSnackBar(snackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    double _size = MediaQuery.of(context).size.height;
    double _sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Radio Buttons Demo"),
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: _size / 60, bottom: _size / 60),
            child: new Text(
              "Select Your Favourite Team!",
              style: new TextStyle(
                fontSize: _size / 30,
                letterSpacing: 2,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          new Container(
            alignment: Alignment.topCenter,
            child: new SizedBox(
              height: _size / 2.5,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _teams.length,
                itemBuilder: (BuildContext context, int index) {
                  return new Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(bottom: 10),
                    decoration: new BoxDecoration(
                      border: new Border(
                        bottom: new BorderSide(
                          color: Colors.lightBlueAccent,
                          width: 2,
                        ),
                      ),
                    ),
                    child: new RadioListTile(
                      value: index,
                      title: new Text(_teams[index]),
                      groupValue: _selectedTeamIndex,
                      onChanged: (int value) {
                        setState(() {
                          _selectedTeamIndex = value;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          new BaseButton(_size, _sizeWidth, _clickOnClick),
        ],
      ),
    );
  }
}
