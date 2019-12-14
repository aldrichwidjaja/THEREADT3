import 'package:flutter/material.dart';
import 'package:flutter_app/MENUDETAIL/MENU1.dart';

List<Recipe> RecipeList = [
  Recipe(name: "5 Elements of Sushi ",
      image: "https://firebasestorage.googleapis.com/v0/b/la-cuisinere.appspot.com/o/image_1.jpg?alt=media&token=4b8c9942-4e52-41f7-95cb-fb39e64a9b3f",
  link: "MENU1()"),
  Recipe(name: "Premium Wine Beef",
      image: "https://firebasestorage.googleapis.com/v0/b/la-cuisinere.appspot.com/o/image_1.jpg?alt=media&token=4b8c9942-4e52-41f7-95cb-fb39e64a9b3f",
      link: "MENU2()"),
  Recipe(name: "Rocks Of The Ocean",
      image: "https://firebasestorage.googleapis.com/v0/b/la-cuisinere.appspot.com/o/image_1.jpg?alt=media&token=4b8c9942-4e52-41f7-95cb-fb39e64a9b3f",
      link: "MENU3()"),
];

class Trend extends StatefulWidget {
  @override
  _TrendState createState() => _TrendState();
}

class _TrendState extends State<Trend> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: RecipeList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MENU1()));
                    },
                    child: Container(
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 6),
                              blurRadius: 10
                          )
                        ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 180,
                          child: Image.network(
                            "${RecipeList[index].image}",
                            width: 180,
                            height: 120,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(RecipeList[index].name),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
            )
                ],
              ),
            );
          }),
    );
  }
}

class Recipe{
  final String name;
  final String image;
  final String link;

  Recipe({this.name, this.image, this.link});


}