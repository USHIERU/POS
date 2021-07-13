part of inventory;

class InventoryInMemory extends InventoryRepository {
  static List<InventoryProduct> _inventory = <InventoryProduct>[];

  @override
  Future<InventoryProduct> addProduct(Product product, BASE_UNITS units) async {
    var inventoryProduct = InventoryProduct(Uuid(), product, 0, units);
    InventoryInMemory._inventory.add(inventoryProduct);
    return inventoryProduct;
  }

  @override
  Future<bool> deleteProduct(InventoryProduct inventoryProduct) async {
    var newInventory = InventoryInMemory._inventory.where(
        (inventoryProductInMemory) =>
            inventoryProductInMemory.id != inventoryProduct.id);
    InventoryInMemory._inventory = newInventory.toList();
    return true;
  }

  @override
  Future<InventoryProduct> addQuantity(
      InventoryProduct inventoryProduct, int quantity) async {
    var newInventory =
        InventoryInMemory._inventory.map((inventoryProductInMemory) {
      if (inventoryProductInMemory.id == inventoryProduct.id)
        return InventoryProduct.fromInventoryProduct(inventoryProductInMemory,
            inventoryProductInMemory.quantity + quantity);
      return inventoryProductInMemory;
    });
    InventoryInMemory._inventory = newInventory.toList();
    return inventoryProduct;
  }

  @override
  Future<InventoryProduct> substractQuantity(
      InventoryProduct inventoryProduct, int quantity) async {
    var newInventory =
        InventoryInMemory._inventory.map((inventoryProductInMemory) {
      if (inventoryProductInMemory.id == inventoryProduct.id)
        return InventoryProduct.fromInventoryProduct(inventoryProductInMemory,
            inventoryProductInMemory.quantity - quantity);
      return inventoryProductInMemory;
    });
    InventoryInMemory._inventory = newInventory.toList();
    return inventoryProduct;
  }
}
