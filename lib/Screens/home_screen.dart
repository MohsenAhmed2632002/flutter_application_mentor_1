import 'package:flutter/material.dart';
import 'package:flutter_application_mentor_1/Screens/cart_page.dart';
import 'package:flutter_application_mentor_1/componant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            elevation: 10,
            backgroundColor: Colors.teal,
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CartPage();
                    },
                  ),
                );
              },
              icon: Icon(
                Icons.shopping_cart_sharp,
                color: Colors.white,
              ),
            ),
            title: Text(
              "HomePage",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SliverList.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
            itemBuilder: (BuildContext context, int index) {
              return CustomListcomponant(
                index: index,
              );
            },
          )
        ],
      ),
    );
  }
}
