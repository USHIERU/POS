import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pos/app/utils/break_points.dart';

class ProductForm extends StatefulWidget {
  final void Function(String product, double price) callback;
  final bool isVertical;

  const ProductForm({Key key, @required this.callback, this.isVertical = true})
      : super(key: key);

  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  TextEditingController _productController = TextEditingController();
  TextEditingController _priceController = TextEditingController();

  @override
  void dispose() {
    _productController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isVertical)
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flex(
            direction: widget.isVertical ? Axis.vertical : Axis.horizontal,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: TextFormField(
                  controller: _productController,
                  decoration: InputDecoration(labelText: 'Product'),
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                child: TextFormField(
                  controller: _priceController,
                  decoration: InputDecoration(labelText: 'Price'),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              widget.callback(
                  _productController.text, double.parse(_priceController.text));
            },
            child: Text('add'),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 40),
            ),
          )
        ],
      );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          controller: _productController,
          decoration: InputDecoration(labelText: 'Product'),
        ),
        SizedBox(height: 5),
        TextFormField(
          controller: _priceController,
          decoration: InputDecoration(labelText: 'Price'),
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
        SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            widget.callback(
                _productController.text, double.parse(_priceController.text));
          },
          child: Text('add'),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(100, 40),
          ),
        )
      ],
    );
  }
}
