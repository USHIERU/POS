part of inventory;

class AddProduct {
  final InventoryRepository _repository;

  AddProduct(this._repository);

  Future<InventoryProduct> run(Product product, BASE_UNITS units) async {
    return _repository.addProduct(product, units);
  }
}