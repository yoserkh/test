import 'StaticItem.dart';
import 'Shoppingcart.dart';
import 'item1.dart';

var customerId = 0;

class Customer {
  late int _id;
  late String name, address;

  Customer(this.name, this.address) {
    _id = ++customerId;
  }

  void updateAddress(String newAddress) {
    address = newAddress;
    print('Address for $name has been updated.');
  }

  void viewItem() {
    // Logic for viewing items should be implemented here.
    // If this method is meant to call another function, use that function's name.
  }

  void addToCart(int a) {
    int index = StaticItemList.indexWhere((element) => element._id == a);
    if (index != -1) {
      var value = StaticItemList[index];
      Shoppingcart.addToCart(value); 
    } else {
      print('Item not found.');
    }
  }
}
