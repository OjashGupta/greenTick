class Item {
  final String id;
  final String category;
  final String name;
  final String imageUrl;
  final List<String> ingredients;

  Item(
      {required this.id,
      required this.category,
      required this.name,
      required this.imageUrl,
      required this.ingredients});
}
