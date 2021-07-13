part of inventory;

class DeleteProduct {
  final InventoryRepository _repository;

  DeleteProduct(this._repository);

  Future<bool> run(InventoryProduct inventoryProduct) async {
    return _repository.deleteProduct(inventoryProduct);
  }
}
