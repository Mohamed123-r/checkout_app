class OrderItems {
  OrderItems({
      this.name, 
      this.quantity, 
      this.price, 
      this.currency,});

  OrderItems.fromJson(dynamic json) {
    name = json['name'];
    quantity = json['quantity'];
    price = json['price'];
    currency = json['currency'];
  }
  String? name;
  num? quantity;
  String? price;
  String? currency;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['quantity'] = quantity;
    map['price'] = price;
    map['currency'] = currency;
    return map;
  }

}