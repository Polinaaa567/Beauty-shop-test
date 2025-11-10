import 'package:beauty_store/pages/care_products_page.dart';
import 'package:beauty_store/pages/catalog_page.dart';
import 'package:beauty_store/pages/home_page.dart';
import 'package:beauty_store/pages/skin_type_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/catalog': (context) => CatalogPage(),
        '/catalog/type': (context) => SkinTypePage(),
        '/catalog/type/products': (context) => CareProductsPage(),
        '/catalog/type/products/filter': (context) => SkinTypePage(),

        // '/'
      },
    );
  }
}
