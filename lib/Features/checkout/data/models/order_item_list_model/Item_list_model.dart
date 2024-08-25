import 'Items.dart';

class ItemListModel {
  ItemListModel({
      this.items,});

  ItemListModel.fromJson(dynamic json) {
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(OrderItems.fromJson(v));
      });
    }
  }
  List<OrderItems>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}