part of cart;

class GetCart {
  final CartRepository _repository;

  GetCart(this._repository);

  Future<Cart> run(Table table) async {
    return _repository.getCart(table);
  }
}