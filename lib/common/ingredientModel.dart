class IngredientModel {
  final String id;
  final String type;
  final String imagePath;

  IngredientModel({
    this.id,
    this.type,
    this.imagePath,
  });
}

final ingredientModels = [
  IngredientModel(
    id: '1',
    type: 'Beef',
    imagePath:   "images/ingredient/beef.png",
  ),
  IngredientModel(
    id: '2',
    type: 'Pork',
    imagePath:   "images/ingredient/pork.png",
  ),
  IngredientModel(
    id: '3',
    type: 'Chicken',
    imagePath:   "images/ingredient/chicken.png",
  ),
  IngredientModel(
    id: '4',
    type: 'Egg',
    imagePath:   "images/ingredient/egg.png",
  ),
  IngredientModel(
    id: '5',
    type: 'Flour',
    imagePath:   "images/ingredient/flour.png",
  ),
  IngredientModel(
    id: '6',
    type: 'Rice',
    imagePath:   "images/ingredient/rice.png",
  ),
  IngredientModel(
    id: '7',
    type: 'Seafood',
    imagePath:   "images/ingredient/seafood.png",
  ),
  IngredientModel(
    id: '8',
    type: 'Vegetable',
    imagePath:   "images/ingredient/vege.png",
  ),
];