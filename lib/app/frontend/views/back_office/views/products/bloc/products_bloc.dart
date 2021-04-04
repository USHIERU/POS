import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/app/frontend/views/back_office/views/products/bloc/products_event.dart';
import 'package:pos/app/frontend/views/back_office/views/products/bloc/products_state.dart';
import 'package:pos/contexts/pos/products/application/add_product.dart';
import 'package:pos/contexts/pos/products/application/get_products.dart';
import 'package:pos/contexts/pos/products/infrastructure/persistence/product_in_memory_repository.dart';

class ProductsBloc extends Bloc<ProductsBaseEvent, ProductsBaseState> {
  ProductsInitialState _initialState;

  ProductsBloc(this._initialState) : super(_initialState);

  ProductsInitialState _setState(ProductsInitialState newState) {
    _initialState = newState;

    return newState;
  }

  @override
  Stream<ProductsBaseState> mapEventToState(ProductsBaseEvent event) async* {
    if (event is GetProductsEvent) {
      var products = await GetProducts(ProductInMemoryRepository()).run();

      yield _setState(_initialState.copyWith(products: products));
    } else if (event is AddProductEvent) {
      yield _setState(_initialState.copyWith(isLoading: true));
      var product =
          await AddProduct(ProductInMemoryRepository()).run(event.product);

      var products = _initialState.products;

      yield _setState(_initialState
          .copyWith(products: [...products, product], isLoading: false));
    }
  }
}
