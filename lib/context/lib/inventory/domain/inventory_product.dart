part of inventory;

class InventoryProduct {
  final String id;
  final String productId;
  final int _quantity;
  final BASE_UNITS unit;

  InventoryProduct._(this.id, this.productId, this._quantity, this.unit);

  factory InventoryProduct(
      Uuid id, Product product, int _quantity, BASE_UNITS unit) {
    return InventoryProduct._(id.v4(), product.id, _quantity, unit);
  }

  factory InventoryProduct.fromInventoryProduct(
      InventoryProduct inventoryProduct, int _quantity) {
    return InventoryProduct._(inventoryProduct.id, inventoryProduct.productId,
        _quantity, inventoryProduct.unit);
  }

  int get quantity => _quantity;
}
