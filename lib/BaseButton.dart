import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {

  double _size;
  double _sizeWidth;
  Function _clickOnClick = null;
  bool _switchValue;

  BaseButton(this._size,this._sizeWidth,this._clickOnClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: _size / 10,
      padding: EdgeInsets.all(_sizeWidth / 25),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.circular(25),
      ),
      child: new RaisedButton(
        color: Colors.lightBlueAccent,
        onPressed: () {
          _clickOnClick(context);
        },
        child: new Text(
          "CLICK",
          style: new TextStyle(
            color: Colors.white,
          ),
        ),
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
      ),
    );
  }
}
