import 'package:flutter/material.dart';

class Item {
  final int id;
  final String name;

  final int price = 50;
  final Color color;

  Item(
    this.id,
    this.name,
  ) : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id; 
  
  @override
  bool operator ==(Object object) => object is Item && object.id == id;
}
