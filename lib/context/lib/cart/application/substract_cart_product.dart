part of cart;

class SubstractProductCart {
  final CartRepository _repository;

  SubstractProductCart(this._repository);

  Future<void> run(CartProduct cartProduct, Table table) =>
      _repository.subtractCartProduct(cartProduct, table);
}
