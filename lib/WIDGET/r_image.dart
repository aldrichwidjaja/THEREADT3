import 'package:flutter/material.dart';

class RecipeImage extends StatelessWidget {
  final String imageURL;

  RecipeImage(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 200,
      child: Image.network(
        imageURL,
        fit: BoxFit.cover,
      ),
    );
  }
}