class TypeModel {
  final String id;
  final String type;
  final String imagePath;

  TypeModel({
    this.id,
    this.type,
    this.imagePath,
  });
}

final typeModels = [
  TypeModel(
    id: '1',
    type: 'Side',
    imagePath:   "images/type/side.png",
  ),
  TypeModel(
    id: '2',
    type: 'Soup',
    imagePath:   "images/type/soup.png",
  ),
  TypeModel(
    id: '3',
    type: 'Stew',
    imagePath:   "images/type/stew.png",
  ),
  TypeModel(
    id: '4',
    type: 'Kimchi',
    imagePath:   "images/type/kimchi.png",
  ),
  TypeModel(
    id: '5',
    type: 'Noodle',
    imagePath:   "images/type/noodle.png",
  ),
  TypeModel(
    id: '6',
    type: 'Rice',
    imagePath:   "images/type/rice.png",
  ),
  TypeModel(
    id: '7',
    type: 'Desert',
    imagePath:   "images/type/desert.png",
  ),

];