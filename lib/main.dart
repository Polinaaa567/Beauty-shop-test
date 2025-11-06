import 'package:beauty_store/ui/categories/product_categories.dart';
import 'package:beauty_store/ui/headers/product_header_section.dart';
import 'package:beauty_store/ui/new_products/container_new_products.dart';
import 'package:beauty_store/ui/personal_care_survey/container_personal_care_survey.dart';
import 'package:beauty_store/ui/stocks_products/container_stocks_products.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BeautyPage(),
    );
  }
}

class BeautyPage extends StatelessWidget {
  const BeautyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProductHeaderSection(),
            ProductCategoriesRow(),
            ContainerNewProduct(),
            PersonalCareSurvey(),
            ContainerStockProduct(),
          ],
        ),
      ),
    );
  }
}
