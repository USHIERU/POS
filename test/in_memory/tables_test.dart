import 'package:flutter_test/flutter_test.dart';
import 'package:context/context.dart';

main() {
  late AbstractFactoryRepository factory;

  setUp(() {
    factory = InMemoryFactory();
  });

  group('Tables', () {
    test('Get Tables', () async {
      final getTables = GetTables(factory.getTableRepository);
      final tables = await getTables.run();

      expect(tables, isA<List<Table>>());
      expect(tables.length > 0, true);
    });

    test('Add Cart', () async {
      final getTables = GetTables(factory.getTableRepository);
      final addCart = AddCart(factory.getCartRepository);
      final tables = await getTables.run();
      final table = tables.first;

      final newCart = await addCart.run(table);

      expect(newCart, isA<Cart>());
      expect(newCart.products.isEmpty, true);
    });

    test('Add product', () async {
      final getProduct = GetProducts(factory.getProductRepository);
      final getTables = GetTables(factory.getTableRepository);
      final addCart = AddCart(factory.getCartRepository);
      final getCart = GetCart(factory.getCartRepository);
      final addCartProduct = AddCartProduct(factory.getCartRepository);

      final tables = await getTables.run();
      final table = tables.first;
      final newCart = await addCart.run(table);
      final products = await getProduct.run();
      await addCartProduct.run(CartProduct(products.first), table);
      final cart = await getCart.run(table);

      expect(newCart, isA<Cart>());
      expect(cart, isA<Cart>());
      expect(cart.products.isNotEmpty, true);
      expect(cart.products.first.product.id, products.first.id);
    });

    test('Add the same product twice', () async {
      final getProduct = GetProducts(factory.getProductRepository);
      final getTables = GetTables(factory.getTableRepository);
      final addCart = AddCart(factory.getCartRepository);
      final getCart = GetCart(factory.getCartRepository);
      final addCartProduct = AddCartProduct(factory.getCartRepository);

      final tables = await getTables.run();
      final table = tables.first;
      await addCart.run(table);
      final products = await getProduct.run();
      await addCartProduct.run(CartProduct(products.first), table);
      await addCartProduct.run(CartProduct(products.first), table);
      final cart = await getCart.run(table);

      expect(cart.products.first.quantity, 2);
    });
  });
}
