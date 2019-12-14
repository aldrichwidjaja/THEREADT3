import 'package:flutter/material.dart';
//import 'package:flutter_app/recipe_listfull.dart';
import 'RecipeBook.dart';
import 'Recipe_trend.dart';
import 'carousel_banner.dart';

class MyHomePage extends StatefulWidget {

  @override
  _HomePage createState() => new _HomePage();
}

class _HomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: <Widget>[
          Carousel_banner(),
          Padding(
                  padding: new EdgeInsets.all(8),
                  child: new Text(
                    'Trending',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.title,
                  ),
          ),
          Trend(),

          //Padding(
            //      padding: new EdgeInsets.all(8),
              //    child: Text(
                //    'Recent Recipes',
                  //  textAlign: TextAlign.left,
                    //style: Theme.of(context).textTheme.title,
                  //)
          //),
          //Container(// Canceled Due to min time to fix container issue
            //height: 500,
            //child: Recipe_listfull()),
            new Column( //End Button
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 75,
                      width: 225,
                      child: Text(
                        'You Reach an End Click Button Below To See More Recipes ! ',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.title,
                      ))
              ),
              SizedBox(
                height: 15,
              ),
              new MaterialButton(
                height: 40.0,
                minWidth: 100.0,
                color: Colors.teal,
                textColor: Colors.white,
                child: new Icon(Icons.arrow_right),
                onPressed: ()=>{
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => recipebookstate()))
                },
                splashColor: Colors.redAccent,
              ),
              SizedBox(
                height: 5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
