part of inventory;

abstract class InventoryRepository {
  Future<InventoryProduct> addProduct(Product product, BASE_UNITS units);
  Future<bool> deleteProduct(InventoryProduct inventoryProduct);
  Future<InventoryProduct> addQuantity(InventoryProduct inventoryProduct, int quantity);
  Future<InventoryProduct> substractQuantity(InventoryProduct inventoryProduct, int quantity);
}