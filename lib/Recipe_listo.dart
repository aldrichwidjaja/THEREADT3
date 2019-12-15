import 'package:flutter/material.dart';

class Recipe{
  final String name;
  final String image;
  final String link;

  Recipe({this.name, this.image, this.link});
}

List<Recipe> RecipeList = [
  Recipe(name: "Premium Beef With Blueberry Sauce",
      image: "assets/images/tacoso.jpg",
      link: "MENU1()"),
  Recipe(name: "Cake of the Royale",
      image: "assets/images/NUDEL.jpg",
      link: "MENU2()"),
  Recipe(name: "Mix Potato With Lemon",
      image: "assets/images/PUTATO.jpg",
      link: "MENU3()"),
];

class Recipe_listo extends StatefulWidget {
  @override
  _Recipe_listoState createState() => _Recipe_listoState();
}

class _Recipe_listoState extends State<Recipe_listo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: RecipeList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  InkWell(
                  onTap:(){
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => null()));
            },
              child: Container(
                    width: 180,
                    height: 180,
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
                          width: 178,
                          child: Image.asset(
                            "${RecipeList[index].image}",
                            height: 120,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(RecipeList[index].name, textAlign: TextAlign.center,),
                        SizedBox(
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                  )
                ],
              ),
            );
          }
          ),
    );
  }
}
