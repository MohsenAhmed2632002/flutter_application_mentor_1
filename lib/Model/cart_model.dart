
import 'package:flutter/material.dart';
import 'package:flutter_application_mentor_1/Model/catalog.dart';
import 'package:flutter_application_mentor_1/Model/item.dart';

class CartModel extends ChangeNotifier {
  late CatalogModel catalogModel = CatalogModel();
  final List<int> listofItem = [];

  CatalogModel get catalog => catalogModel;
  
  set catlog(CatalogModel catalog) {
    catalogModel = catalog;
    notifyListeners();
  }

  List<Item> get items => listofItem
      .map(
        (
          id,
        ) =>
            catalogModel.getById(
          id,
        ),
      )
      .toList();

  int get totalprice =>
      items.fold(0, (total, current) => total + current.price);


      
  add(Item item) {
    listofItem.add(item.id);
    notifyListeners();
  }

  remove(Item item) {
    listofItem.remove(item.id);
    notifyListeners();
  }
}
