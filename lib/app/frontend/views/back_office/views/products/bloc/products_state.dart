import 'package:pos/contexts/pos/products/domain/product.dart';

abstract class ProductsBaseState {}

class ProductsInitialState extends ProductsBaseState {
  final List<Product> products;
  final bool isLoading;

  ProductsInitialState({this.products = const [], this.isLoading = false});

  ProductsInitialState copyWith({List<Product> products, bool isLoading}) {
    var productsInitialState = ProductsInitialState(
        products: products ?? this.products,
        isLoading: isLoading ?? this.isLoading);

    return productsInitialState;
  }
}
