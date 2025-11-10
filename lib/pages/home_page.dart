import 'package:beauty_store/features/catalog/categories/category_horizontal_list.dart';
import 'package:beauty_store/features/catalog/sections/hits_products/container_hits_products.dart';
import 'package:beauty_store/features/catalog/sections/stocks_products/container_stocks_products.dart';
import 'package:beauty_store/features/details/product_filter/product_filter.dart';
import 'package:beauty_store/features/details/product_header/product_header_section.dart';
import 'package:beauty_store/features/personal_care/widgets/personal_care_survey.dart';
import 'package:beauty_store/features/sections/new_products/container_new_products.dart';
import 'package:beauty_store/shared/widgets/custom_bottom_nav_bar.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int _currentNavIndex = 0;

  void _onNavItemTapped(int index) {
    if (index == _currentNavIndex) return;
    
    setState(() {
      _currentNavIndex = index;
    });

    switch (index) {
      case 1:
        Navigator.pushNamedAndRemoveUntil(context, '/catalog', (route) => false);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: _buildHomeContent(),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentNavIndex,
        onTap: _onNavItemTapped,
      ),
    );
  }


  Widget _buildHomeContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductHeaderSection(),
          CategoryHorizontalList(),
          NewProductsSection(),
          SkincareQuizSection(),
          SpecialOffersSection(),
          ProductFilterRow(),
          BestSellersSection(),
        ],
      ),
    );
  }
}
