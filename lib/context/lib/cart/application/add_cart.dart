part of cart;

class AddCart {
  final CartRepository _repository;

  AddCart(this._repository);

  Future<Cart> run(Table table) async {
    return _repository.addCart(table);
  }
}