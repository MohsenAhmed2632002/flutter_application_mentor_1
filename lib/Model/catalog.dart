import 'package:flutter_application_mentor_1/Model/item.dart';

class CatalogModel {
  List<String> itemName = [
    "hand cream",
    "lisa pollock",
    "babiators",
    "black MILK",
    "Voodoo",
    "Artico",
    "Bonds",
    "Jockey",
    "vitals",
    "william Morris",
    "Blu.hen",
    "Mary Grace",
    "vera may",
    "sundaise",
    "intrinsic",
  ];

  Item getById(int id) {
    return Item(
      id,
      itemName[id%itemName.length],
    );
  }
}
