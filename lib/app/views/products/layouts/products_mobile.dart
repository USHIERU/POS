import 'package:flutter/material.dart';
import 'package:pos/app/views/products/widgets/product_from.dart';
import 'package:pos/context/product/domain/product.dart';

class ProductsMobile extends StatefulWidget {
  final List<Product> products;

  const ProductsMobile({Key key, @required this.products}) : super(key: key);

  @override
  _ProductsMobileState createState() => _ProductsMobileState();
}

class _ProductsMobileState extends State<ProductsMobile> {
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
    return Stack(
      children: [
        ListView(
          children: [
            for (Product product in products)
              ListTile(
                title: Text(product.name),
                subtitle: Text(product.price.toString()),
              ),
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Material(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue,
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                radius: 50,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(),
                      body: Center(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70),
                        child: ProductForm(
                          callback: (product, price) {
                            setState(() {
                              products.add(Product(product, price));
                            });
                            Navigator.pop(context);
                          },
                        ),
                      )),
                    ),
                  ),
                ),
                splashColor: Colors.blue,
                highlightColor: Colors.blue.shade600,
                child: Container(
                  width: 55,
                  height: 55,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
