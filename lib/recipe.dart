enum RecipeType {
  food,
  drink,
}

class Recipe {
  final String id;
  final RecipeType type;
  final String name;
  final List<String> ingredients;
  final List<String> preparation;
  final String imageURL;
  final String videoURL;

  const Recipe({
    this.id,
    this.name,
    this.type,
    this.ingredients,
    this.preparation,
    this.imageURL,
    this.videoURL
  });

  Recipe.fromMap(Map<String, dynamic> data, String id)
      : this(
    id: id,
    name: data['name'],
    type: RecipeType.values[data['type']],
    ingredients: new List<String>.from(data['ingredients']),
    preparation: new List<String>.from(data['steps']),
    imageURL: data['image'],
    videoURL: data['video']
  );
}

