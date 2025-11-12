import 'package:beauty_store/core/layout/main_layout.dart';
import 'package:beauty_store/features/catalog/categories/category_horizontal_list.dart';
import 'package:beauty_store/features/catalog/sections/hits_products/container_hits_products.dart';
import 'package:beauty_store/features/catalog/sections/new_products/container_new_products.dart';
import 'package:beauty_store/features/catalog/sections/stocks_products/container_stocks_products.dart';
import 'package:beauty_store/features/details/product_filter/product_filter.dart';
import 'package:beauty_store/features/details/product_header/product_header_section.dart';
import 'package:beauty_store/features/personal_care/widgets/personal_care_survey.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(currentIndex: 0, child: _buildHomeContent());
  }

  Widget _buildHomeContent() {
    return SingleChildScrollView(
      child: const Column(
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
