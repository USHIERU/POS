import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/app/frontend/config/size_config.dart';
import 'package:pos/app/frontend/views/back_office/views/products/bloc/products_bloc.dart';
import 'package:pos/app/frontend/views/back_office/views/products/bloc/products_event.dart';
import 'package:pos/app/frontend/views/back_office/views/products/bloc/products_state.dart';
import 'package:pos/app/frontend/widgets/loading.dart';
import 'package:pos/contexts/pos/products/domain/product.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // ignore: close_sinks
  ProductsBloc _productsBloc = ProductsBloc(ProductsInitialState());
  ProductsInitialState _state = ProductsInitialState();

  @override
  void initState() {
    super.initState();
    _productsBloc.add(GetProductsEvent());
    _productsBloc.add(AddProductEvent(Product('name 1', 10)));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return BlocListener<ProductsBloc, ProductsBaseState>(
      cubit: _productsBloc,
      listener: (context, state) {},
      child: BlocBuilder<ProductsBloc, ProductsBaseState>(
        cubit: _productsBloc,
        builder: (BuildContext context, ProductsBaseState state) {
          if (state is ProductsInitialState) _state = state;
          return Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.heightBlock * .5,
                  horizontal: SizeConfig.widthBlock,
                ),
                child: Container(
                  height: SizeConfig.heightBlock * 89,
                  width: SizeConfig.widthBlock * 76.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: SizeConfig.heightBlock * 5,
                        width: SizeConfig.widthBlock * 76.5,
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Add new product'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.heightBlock,
                      ),
                      Container(
                        height: SizeConfig.heightBlock * 83,
                        width: SizeConfig.widthBlock * 76.5,
                        child: Row(
                          children: [
                            Container(
                              height: SizeConfig.heightBlock * 83,
                              width: SizeConfig.widthBlock * 25.5,
                              child: ListView(
                                children: _state.products
                                    .map(
                                      (product) => ListTile(
                                        title: Text(product.name),
                                      ),
                                    )
                                    .toList(),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              if (_state.isLoading)
                Loading(
                  height: SizeConfig.heightBlock * 90,
                  width: SizeConfig.widthBlock * 78.5,
                ),
            ],
          );
        },
      ),
    );
  }
}
