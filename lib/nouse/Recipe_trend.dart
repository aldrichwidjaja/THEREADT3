import 'package:flutter/material.dart';
import 'package:flutter_app/WIDGET/r_image.dart';
import 'package:flutter_app/WIDGET/r_title.dart';
import 'package:flutter_app/recipe.dart';


class Trend extends StatelessWidget {
  final Recipe recipe;
  final bool inFavorites;
  final Function onFavoriteButtonPressed;

  const Trend({
    @required this.recipe,
    @required this.inFavorites,
    @required this.onFavoriteButtonPressed
  }) ;


  @override
  Widget build(BuildContext context) {
    RawMaterialButton _buildFavoriteButton() {
      return RawMaterialButton(
        constraints: const BoxConstraints(minWidth: 40.0, minHeight: 40.0),
        onPressed: () => onFavoriteButtonPressed(recipe.id),
        child: Icon(
          // Conditional expression:
          // show "favorite" icon or "favorite border" icon depending on widget.inFavorites:
          inFavorites == true ? Icons.favorite : Icons.favorite_border,
        ),
        elevation: 2.0,
        fillColor: Colors.white,
        shape: CircleBorder(),
      );
    }

    return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap:(){
                    },
                    child: Container(
                    width: 180,
                      height: 162,
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
                        Stack(
                          children: <Widget>[
                            RecipeImage(recipe.imageURL),
                            Positioned(
                              child: _buildFavoriteButton(),
                              top: 2.0,
                              right: 2.0,
                            ),
                          ],
                        ),
                        RecipeTitle(recipe,5),
                      ],
                    ),
                  ),
            )
                ],
              ),
            );
  }
}
