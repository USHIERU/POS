class Category {
  final String name;
  final DateTime availableFrom;
  final DateTime availableTo;

  Category(this.name, this.availableFrom, this.availableTo);

  factory Category.empty() {
    return Category('', DateTime.now(), DateTime.now());
  }
}
