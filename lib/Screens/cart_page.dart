import 'package:flutter/material.dart';
import 'package:flutter_application_mentor_1/Model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var cart = context.read<CartModel>();

    return Scaffold(appBar: AppBar(title: Text("${cart.listofItem.length}"),),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: ListView.builder(
              itemCount: cart.listofItem.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: Colors.grey,
                    title: Text(
                      cart.items[index].name,
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.white),
                      onPressed: () => cart.remove(
                        cart.items[index],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Consumer<CartModel>(
              builder: (BuildContext context, value, Widget? child) {
                return Container(
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      "${cart.totalprice}",
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
