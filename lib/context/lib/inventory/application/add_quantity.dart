part of inventory;

class AddQuantity {
  final InventoryRepository _repository;

  AddQuantity(this._repository);

  Future<InventoryProduct> run(
      InventoryProduct inventoryProduct, int quantity) async {
    return _repository.addQuantity(inventoryProduct, quantity);
  }
}
