import 'package:flutter/material.dart';

import './BaseButton.dart';

void main() => runApp(new MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedTeamIndex = 0;
  double _selectedTeamAwesomenes = 0;
  bool _switchBool = false;
  Function _copyClickOnClick = null;

  List<String> _teams = [
    "Manchester United",
    "Barcelona",
    "Real Madrid",
    "Chelsea"
  ];

  List<String> _managers = [
    "Ole Gunnar Solskjaer",
    "Ernesto Valvarde",
    "Zindeine Zindane",
    "Frank Lampard",
  ];
  String _selectedManagers;

  @override
  void initState() {
    _selectedManagers = _managers[0];
    _selectedTeamIndex = 0;
    super.initState();
  }

  void _switchOnClick(bool value) {
    setState(() {
      _switchBool = value;
      if (value) {
        _copyClickOnClick = _clickOnClick;
      } else {
        _copyClickOnClick = null;
      }
    });
  }

  void _clickOnClick(BuildContext tempContext) {
    setState(() {
      SnackBar snackBar = new SnackBar(
        backgroundColor: Colors.lightBlueAccent,
        content: new Text("You Selected " +
            _teams[_selectedTeamIndex] +
            " awesomenes is " +
            (_selectedTeamAwesomenes * 100).round().toString()),
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

  void _clickOnClickManager(BuildContext tempContext) {
    setState(() {
      SnackBar snackBar = new SnackBar(
        backgroundColor: Colors.lightBlueAccent,
        content: new Text("You selected " + _selectedManagers),
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
      drawer: new Drawer(
        child: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                height: _size / 8.65,
                width: double.infinity,
                color: Colors.blue,
                padding:
                    EdgeInsets.only(top: _size / 28, left: _sizeWidth / 60),
                child: new Text(
                  "Radio Button Demo",
                  style: new TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              new Column(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(top: _size / 50),
                    child: new Text(
                      "SELECTED MANAGER",
                      style: new TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  new Container(
                    alignment: Alignment.topCenter,
                    decoration: new BoxDecoration(
                      border: new Border(
                        bottom: new BorderSide(
                            width: 2, color: Colors.lightBlueAccent),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      top: _size / 30,
                      left: _sizeWidth / 9,
                      bottom: _size / 60,
                    ),
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.group,
                          color: Colors.lightBlueAccent,
                          size: 40,
                        ),
                        new Container(
                          padding: EdgeInsets.only(left: _sizeWidth / 50),
                          child: new Text(
                            _teams[_selectedTeamIndex],
                            style: new TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.only(top: _size / 50),
                    child: new Text(
                      "SELECTED AWESOMENES",
                      style: new TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  new Container(
                    alignment: Alignment.topCenter,
                    decoration: new BoxDecoration(
                      border: new Border(
                        bottom: new BorderSide(
                            width: 2, color: Colors.lightBlueAccent),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      top: _size / 30,
                      left: _sizeWidth / 9,
                      bottom: _size / 60,
                    ),
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.spa,
                          color: Colors.lightBlueAccent,
                          size: 40,
                        ),
                        new Container(
                          padding: EdgeInsets.only(left: _sizeWidth / 50),
                          child: new Text(
                            (_selectedTeamAwesomenes * 100).round().toString() +
                                " %",
                            style: new TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.only(top: _size / 50),
                    child: new Text(
                      "SELECTED MANAGER",
                      style: new TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  new Container(
                    alignment: Alignment.topCenter,
                    decoration: new BoxDecoration(
                      border: new Border(
                        bottom: new BorderSide(
                            width: 2, color: Colors.lightBlueAccent),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      top: _size / 30,
                      left: _sizeWidth / 9,
                      bottom: _size / 60,
                    ),
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.person_outline,
                          color: Colors.lightBlueAccent,
                          size: 40,
                        ),
                        new Container(
                          padding: EdgeInsets.only(left: _sizeWidth / 50),
                          child: new Text(
                            _selectedManagers,
                            style: new TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: "Rest",
        child: new Icon(Icons.clear_all),
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
            _selectedTeamIndex = 0;
            _selectedTeamAwesomenes = 0;
            _switchBool = false;
            _copyClickOnClick = null;
            _selectedManagers = _managers[0];
          });
        },
      ),
      body: new Center(
        child: new Column(
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
              padding: EdgeInsets.only(bottom: _size / 60),
              alignment: Alignment.topCenter,
              child: new SizedBox(
                height: _size / 4,
                child: new Scrollbar(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _teams.length,
                    itemBuilder: (BuildContext context, int index) {
                      return new Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(bottom: _size / 60),
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
                          secondary: new Icon(
                            Icons.group,
                            color: Colors.lightBlueAccent,
                          ),
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
            ),
            new Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: _size / 60, bottom: _size / 60),
              child: new Text(
                "Select Your Favourite Manager!",
                style: new TextStyle(
                  fontSize: _size / 40,
                  letterSpacing: 2,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            new DropdownButton(
              icon: new Icon(Icons.person_add, color: Colors.blueAccent),
              value: _selectedManagers,
              items: _managers.map((String value) {
                return new DropdownMenuItem(
                  value: value,
                  child: new Row(
                    children: <Widget>[
                      new Icon(
                        Icons.person_outline,
                        color: Colors.lightBlueAccent,
                      ),
                      new Container(
                        padding: EdgeInsets.only(
                            left: _sizeWidth / 20, right: _sizeWidth / 40),
                        child: new Text(value),
                      ),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (String value) {
                setState(() {
                  _selectedManagers = value;
                });
              },
            ),
            new Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: _size / 60, bottom: _size / 60),
              child: new Text(
                "Set Awesomenes of the selected Team!",
                style: new TextStyle(
                  fontSize: _size / 40,
                  letterSpacing: 2,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            new Container(
              child: new Slider(
                min: 0,
                max: 1,
                value: _selectedTeamAwesomenes,
                onChanged: (double value) {
                  setState(() {
                    _selectedTeamAwesomenes = value;
                  });
                },
              ),
            ),
            new Container(
              padding: EdgeInsets.only(bottom: _size / 60),
              child: new LinearProgressIndicator(
                value: _selectedTeamAwesomenes,
              ),
            ),
            new Container(
              padding: EdgeInsets.all(_size / 90),
              margin: EdgeInsets.only(
                  right: _sizeWidth / 30, left: _sizeWidth / 30),
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 2,
                    color: Colors.lightBlueAccent,
                  )),
              child: new SwitchListTile(
                title: new Text("Click to activate the button"),
                secondary: new Icon(Icons.cake),
                value: _switchBool,
                onChanged: (bool value) {
                  _switchOnClick(value);
                },
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new BaseButton(_size, _sizeWidth, _copyClickOnClick),
                new BaseButton(_size, _sizeWidth, _clickOnClickManager),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
