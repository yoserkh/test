var autodId = 0;
class Item{
 late int _id;
  String _name;
 late double _price;
 late int quantity;

 Item(this._name , this._price , this.quantity){
  _id = ++autodId;
 }
String get getName => _name;
double get getPrice => _price;
int get getQuantity => quantity;
int get getId => _id;

void updateQuantity(int newQuantity) {
  if (newQuantity >= 0) {
    quantity = newQuantity;
}
}
bool isInStock(){
  return quantity > 0;
} 
}