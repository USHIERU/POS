part of cart;

class GetCartProducts {
  final CartRepository _repository;

  GetCartProducts(this._repository);

  Future<List<CartProduct>> run(Table table) async {
    return _repository.getCartProducts(table);
  }
}