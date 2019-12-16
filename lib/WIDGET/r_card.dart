import 'package:flutter/material.dart';
import 'package:flutter_app/WIDGET/recipe_detail.dart';

import 'package:flutter_app/WIDGET/r_title.dart';
import 'package:flutter_app/WIDGET/r_image.dart';
import 'package:flutter_app/recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final bool inFavorites;
  final Function onFavoriteButtonPressed;

  RecipeCard(
      {@required this.recipe,
        @required this.inFavorites,
        @required this.onFavoriteButtonPressed});

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




    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => new DetailScreen(recipe, inFavorites),
        ),
      ),
      child: Container(
        height: 20,
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              RecipeTitle(recipe, 0),
            ],
          ),
        ),
      ),
    );
  }
}