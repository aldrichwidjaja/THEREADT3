import 'package:flutter/material.dart';

class Recipe_listfull extends StatefulWidget {
  @override
  _Recipe_listoState createState() => _Recipe_listoState();
}

class _Recipe_listoState extends State<Recipe_listfull> {
  var recipe_list =[
    {
      "name":"Premium Beef With Blueberry Sauce",
      "picture":"assets/images/tacoso.jpg",
      "chef":"El Franco Davinco",
      "link":null()
    },
    {
      "name":"Cake of the Royale",
      "picture":"assets/images/NUDEL.jpg",
      "chef":"NUDELSO",
      "link":null()
    },
    {
      "name":"Mix Potato With Lemon",
      "picture":"assets/images/PUTATO.jpg",
      "chef":"MAKSLO",
      "link":null()
    },
    {
      "name":"5 Elements of Sushi",
      "picture":"assets/images/SUZY.jpg",
      "chef":"MAKSLO",
      "link":null()
    },
    {
      "name":"Premium Wine Beef",
      "picture":"assets/images/BEFO.jpg",
      "chef":"MAKSLO",
      "link":null()
    },
    {
      "name":"Rocks Of The Ocean",
      "picture":"assets/images/KANTONO.jpg",
      "chef":"MAKSLO",
      "link":null()
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: recipe_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: EdgeInsets.all(4.0),
          child: Single_recipe(
          rec_name: recipe_list[index]['name'],
          rec_pic: recipe_list[index]['picture'],
          rec_chef: recipe_list[index]['chef'],
            rec_link: recipe_list[index]['link'],
          ));
    });
  }
}

class Single_recipe extends StatelessWidget {
  final rec_name;
  final rec_pic;
  final rec_chef;
  final rec_link;
  
  Single_recipe({
    this.rec_name,
    this.rec_pic,
    this.rec_chef,
    this.rec_link,
});
 @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
          tag: rec_name,
          child: Material(
            child: InkWell(onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => rec_link));
            },
            child: GridTile(
              footer: Container(
                height: 50,
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    rec_name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ),
                ),
              child: Image.asset(
                  rec_pic,
                fit: BoxFit.cover,
              ),
            ),
            ),
          ),
        ),
      )
    );
  }
}

