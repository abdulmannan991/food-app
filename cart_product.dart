import 'package:foodapp/models.dart/product.dart';

class CartModel {
  // we also remove the underscore  _ but for learning i do this step
  late Product _product;

// collection of ids store ids of each item
  final List<int> _itemId = [];

  //  get product
  Product get products => _product;

  set products(Product newProduct) {
    assert(newProduct != null);
    _product = newProduct;
  }
  //  get items in the cart

  Iterable get items => _itemId
      .map(
        (id) => _product.getById(id),
      )
      .toList();

// get total price

  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

  // Add item

  void add(Product item) {
    _itemId.add(item.id);
  }
  // Remove item

  void remove(Product item) {
    _itemId.remove(item.id);
  }
}
