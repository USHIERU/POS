import 'package:flutter/material.dart';
import 'package:pos/app/views/products/widgets/product_from.dart';
import 'package:pos/context/product/domain/product.dart';

class ProductsComputer extends StatefulWidget {
  final List<Product> products;

  const ProductsComputer({Key key, @required this.products}) : super(key: key);

  @override
  _ProductsComputerState createState() => _ProductsComputerState();
}

class _ProductsComputerState extends State<ProductsComputer> {
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      products = widget.products;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ProductForm(isVertical: false, callback: (name, price) {
            setState(() {
              products.add(Product(name, price));
            });
          }),
        ),
        Expanded(
          flex: 10,
          child: ListView(
            children: [
              for (Product product in products)
                ListTile(
                  title: Text(product.name),
                  subtitle: Text(product.price.toString()),
                ),
            ],
          ),
        )
      ],
    );
  }
}
