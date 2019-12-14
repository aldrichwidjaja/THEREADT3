import 'package:flutter/material.dart';

class MENU5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: new AppBar(
          title: Text("Premium Wine Beef"),
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
              new Container(
                  child: (Image.asset('assets/images/fad1.jpg'))
              ),
              new Padding(padding: new EdgeInsets.all(15.00)),
              new Container(
                  child: Text ("Ingredients Needed")
              ),
              new Padding(padding: new EdgeInsets.all(15.00)),
              new Container(
                height: 300.0,
                child: new ListView(
                  children: <Widget>[
                    new RaisedButton(
                        disabledColor: Colors.blue,
                        color: Color(0xffFF1744),
                        onPressed: null,
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text('Begin'),
                            Spacer(),
                            Text('|'),
                            Spacer(),
                            Text('End'),
                          ],
                        )
                    ),
                    new Padding(padding: new EdgeInsets.all(5.00)),
                    new RaisedButton(
                        disabledColor: Colors.blue,
                        color: Color(0xffFF1744),
                        onPressed: null,
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text('Begin'),
                            Spacer(),
                            Text('|'),
                            Spacer(),
                            Text('End'),
                          ],
                        )
                    ),
                    new Padding(padding: new EdgeInsets.all(5.00)),
                    new RaisedButton(
                        disabledColor: Colors.blue,
                        color: Color(0xffFF1744),
                        onPressed: null,
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text('Begin'),
                            Spacer(),
                            Text('|'),
                            Spacer(),
                            Text('End'),
                          ],
                        )
                    ),
                    new Padding(padding: new EdgeInsets.all(5.00)),
                    new RaisedButton(
                        disabledColor: Colors.green,
                        color: Color(0xffFF1744),
                        onPressed: null,
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text('Begin'),
                            Spacer(),
                            Text('|'),
                            Spacer(),
                            Text('End'),
                          ],
                        )
                    ),
                    new Padding(padding: new EdgeInsets.all(5.00)),
                    new RaisedButton(
                        disabledColor: Colors.green,
                        color: Color(0xffFF1744),
                        onPressed: null,
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text('Begin'),
                            Spacer(),
                            Text('|'),
                            Spacer(),
                            Text('End'),
                          ],
                        )
                    ),
                    new Padding(padding: new EdgeInsets.all(5.00)),
                    new RaisedButton(
                        disabledColor: Colors.green,
                        color: Color(0xffFF1744),
                        onPressed: null,
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text('Begin'),
                            Spacer(),
                            Text('|'),
                            Spacer(),
                            Text('End'),
                          ],
                        )
                    ),
                  ],
                ),
              ),
              new Padding(padding: new EdgeInsets.all(15.00)),
              new Container(
                  child: Text ("Step by step - How to make")
              ),
              new Padding(padding: new EdgeInsets.all(15.00)),
              new Container(
                height: 300.0,
                child: new ListView(
                  children: <Widget>[
                    new RaisedButton(
                      disabledColor: Colors.blue,
                      color: Color(0xffFF1744),
                      onPressed: null,
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                      ),
                      child: new Text("1. CREATE"),
                    ),
                    new Padding(padding: new EdgeInsets.all(5.00)),
                    new RaisedButton(
                      disabledColor: Colors.blue,
                      color: Color(0xffFF1744),
                      onPressed: null,
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                      ),
                      child: new Text("2. TRY"),
                    ),
                    new Padding(padding: new EdgeInsets.all(5.00)),
                    new RaisedButton(
                      disabledColor: Colors.blue,
                      color: Color(0xffFF1744),
                      onPressed: null,
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                      ),
                      child: new Text("3. FINISH"),
                    ),
                    new Padding(padding: new EdgeInsets.all(5.00)),
                    new RaisedButton(
                      disabledColor: Colors.blue,
                      color: Color(0xffFF1744),
                      onPressed: null,
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                      ),
                      child: new Text("Try"),
                    ),
                    new Padding(padding: new EdgeInsets.all(5.00)),
                  ],
                ),
              ),
            ])
        ));
  }
}