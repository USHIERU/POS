part of inventory;

class SubstractQuantity {
  final InventoryRepository _repository;

  SubstractQuantity(this._repository);

  Future<InventoryProduct> run(
      InventoryProduct inventoryProduct, int quantity) {
    return _repository.substractQuantity(inventoryProduct, quantity);
  }
}
