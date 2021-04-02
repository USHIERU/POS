import 'package:flutter/material.dart';
import 'package:pos/app/frontend/config/size_config.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Add new product'),
          ),
          SizedBox(
            height: SizeConfig.heightBlock * 3,
          ),
          Container(
            height: SizeConfig.heightBlock * 65,
            width: SizeConfig.widthBlock * 75,
            child: Row(
              children: [
                Column(
                  children: [
                    Text('Product 1'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
