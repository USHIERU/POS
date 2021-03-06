import 'package:pos/contexts/pos/products/domain/product.dart';
import 'package:pos/contexts/pos/users/domain/user.dart';

class Ticket {
  String _description;
  User _waiter;
  List<Product> _products;
  double _total;

  Ticket(this._description, this._waiter, this._products, this._total);

  
}
