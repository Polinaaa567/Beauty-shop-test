import 'package:beauty_store/core/entities/product.dart';
import 'package:beauty_store/core/layout/main_layout.dart';
import 'package:beauty_store/shared/widgets/headers_button_back_title.dart';
import 'package:beauty_store/shared/widgets/product_card.dart';

import 'package:flutter/material.dart';

class CareProductsPage extends StatefulWidget {
  const CareProductsPage({super.key});

  @override
  State<StatefulWidget> createState() => _CareProductsPageState();
}

class _CareProductsPageState extends State<CareProductsPage> {
  bool isActiveCleaning = true;
  bool isActiveHumidification = false;
  bool isActiveRegeneration = false;

  void _setActiveCleaning() {
    setState(() {
      isActiveCleaning = true;
      isActiveHumidification = false;
      isActiveRegeneration = false;
    });
  }

  void _setActiveHumidification() {
    setState(() {
      isActiveCleaning = false;
      isActiveHumidification = true;
      isActiveRegeneration = false;
    });
  }

  void _setActiveRegeneration() {
    setState(() {
      isActiveCleaning = false;
      isActiveHumidification = false;
      isActiveRegeneration = true;
    });
  }

  List<ProductCard> products = [
    ProductCard(
      productItem: Product(
        type: 'Сыворотка',
        title: 'Unstress Total Serenity Serum',
        price: '10 195 ₽',
        assetUrl: 'assets/images/product/new_serum.png',
      ),
      width: 113.27,
      height: 155.55,
      top: 13.9,
      topShadow: 18.43,
      left: 23.17,
      leftShadow: 29.21,
    ),
    ProductCard(
      productItem: Product(
        type: 'Тоник',
        title: 'Unstress Revitalizing Toner',
        price: '3095 ₽',
        assetUrl: 'assets/images/product/new_tonic.png',
      ),
      width: 125,
      height: 172,
      top: 6,
      left: 14.84,
      topShadow: 9,
      leftShadow: 21.84,
    ),

    ProductCard(
      productItem: Product(
        type: 'Сыворотка',
        title: 'Unstress Total Serenity Serum',
        price: '10 195 ₽',
        assetUrl: 'assets/images/product/new_serum.png',
      ),
      width: 113.27,
      height: 155.55,
      top: 13.9,
      topShadow: 18.43,
      left: 23.17,
      leftShadow: 29.21,
    ),
    ProductCard(
      productItem: Product(
        type: 'Тоник',
        title: 'Unstress Revitalizing Toner',
        price: '3095 ₽',
        assetUrl: 'assets/images/product/new_tonic.png',
      ),
      width: 125,
      height: 172,
      top: 6,
      left: 14.84,
      topShadow: 9,
      leftShadow: 21.84,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      currentIndex: 1,
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 63, left: 16, right: 16),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadersButtonBackTitle(title: ''),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    'Средства \nдля жирной кожи',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '28 продуктов',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/catalog/type/products/filters',
                    ),
                    child: Image.asset(
                      'assets/images/icons/icon_filtered.png',
                      height: 20,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 218 - 175 - 27),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSelectorFilterButton(
                        title: 'Очищение',
                        isActive: isActiveCleaning,
                        onTap: _setActiveCleaning,
                      ),
                      _buildSelectorFilterButton(
                        title: 'Увлажнение',
                        isActive: isActiveHumidification,
                        onTap: _setActiveHumidification,
                      ),
                      _buildSelectorFilterButton(
                        title: 'Регенерация',
                        isActive: isActiveRegeneration,
                        onTap: _setActiveRegeneration,
                      ),
                    ],
                  ),
                ),
              ),
              _buildCatalogProducts(products),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelectorFilterButton({
    required bool isActive,
    required String title,
    required Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        width: 105,
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: isActive ? Color(0xff171717) : Color(0xffF4F4F4),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: isActive ? Color(0xffFFFFFF) : Color(0xff000000),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCatalogProducts(List<ProductCard> products) {
    return Padding(
      padding: EdgeInsets.only(top: 25),
      child: Wrap(
        spacing: 8,
        runSpacing: 16,
        children: products.map((product) {
          return ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 160),
            child: product,
          );
        }).toList(),
      ),
    );
  }
}
