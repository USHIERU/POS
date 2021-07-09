part of cart;

class AddCartProduct {
  final CartRepository _repository;

  AddCartProduct(this._repository);

  Future<void> run(CartProduct cartProduct, Table table) async {
    return _repository.addCartProduct(cartProduct, table);
  }
}
