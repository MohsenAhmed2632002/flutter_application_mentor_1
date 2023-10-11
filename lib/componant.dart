import 'package:flutter/material.dart';
import 'package:flutter_application_mentor_1/Model/cart_model.dart';
import 'package:flutter_application_mentor_1/Model/catalog.dart';
import 'package:flutter_application_mentor_1/Model/item.dart';
import 'package:provider/provider.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.label,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          label: Text("$label"),
        ),
      ),
    );
  }
}

class CustomListcomponant extends StatelessWidget {
  CustomListcomponant({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    var item = context.read<CatalogModel>().getById(index);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(5, 15),
              blurRadius: 5,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: item.color,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
              ),
            ),
            Text(
              "${item.name}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            AddButton(item: item),
          ],
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    var isInCart =
    context.select<CartModel, bool>((cart) => cart.items.contains(item));

    return TextButton(
      onPressed: isInCart ? null : context.read<CartModel>().add(item),
      child: isInCart
          ? Icon(Icons.check)
          : Text(
              "ADD",
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
    );
  }
}
