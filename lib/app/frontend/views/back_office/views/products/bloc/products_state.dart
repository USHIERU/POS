import 'package:pos/contexts/pos/products/domain/product.dart';

abstract class ProductsBaseState {}

class ProductsInitialState extends ProductsBaseState {
  final List<Product> products;
  final bool isLoading;
  final bool showModal;

  ProductsInitialState({
    this.products = const [],
    this.isLoading = false,
    this.showModal = false,
  });

  ProductsInitialState copyWith({
    List<Product> products,
    bool isLoading,
    bool showModal,
  }) {
    var productsInitialState = ProductsInitialState(
      products: products ?? this.products,
      isLoading: isLoading ?? this.isLoading,
      showModal: showModal ?? this.showModal,
    );

    return productsInitialState;
  }
}
