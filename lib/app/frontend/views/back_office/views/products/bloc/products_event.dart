import 'package:pos/contexts/pos/products/domain/product.dart';

abstract class ProductsBaseEvent {}

class GetProductsEvent extends ProductsBaseEvent {}

class AddProductEvent extends ProductsBaseEvent {
  final Product product;

  AddProductEvent(this.product);
}
