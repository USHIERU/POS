import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/app/frontend/views/back_office/views/products/bloc/products_event.dart';
import 'package:pos/app/frontend/views/back_office/views/products/bloc/products_state.dart';

class ProductsBloc extends Bloc<ProductsBaseEvent, ProductsBaseState> {
  ProductsInitialState _initialState;

  ProductsBloc(this._initialState) : super(_initialState);

  @override
  Stream<ProductsBaseState> mapEventToState(ProductsBaseEvent event) async* {}
}
