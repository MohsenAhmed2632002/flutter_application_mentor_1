import 'package:flutter/material.dart';
import 'package:flutter_application_mentor_1/Model/cart_model.dart';
import 'package:flutter_application_mentor_1/Model/catalog.dart';
import 'package:flutter_application_mentor_1/Screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         Provider(
          create: (context) => CatalogModel(),
        ),
        Provider(
          create: (context) => CartModel(),
        ),
        // ChangeNotifierProxyProvider<CatalogModel, CartModel>(
        //   create: (context) => CartModel(),
        //   update: (context, catalog, cart) {
        //     if (cart == null) throw ArgumentError.notNull("no");
        //     cart.catalogModel = catalog;
        //     return cart;
        //   },
        // ),
       
       
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
