import 'package:beauty_store/core/entities/product.dart';
import 'package:beauty_store/shared/widgets/product_card.dart';
import 'package:beauty_store/shared/widgets/section_header_title.dart';

import 'package:flutter/material.dart';

class SpecialOffersSection extends StatelessWidget {
  const SpecialOffersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitleCatalog(), 
        _buildRowItemsCatalog(),
      ],
    );
  }

  Widget _buildTitleCatalog() {
    return const Padding(
      padding: EdgeInsets.only(top: 15.0, left: 16.0),
      child: SectionHeaderTitle(
        title: 'Акции',
        colors: [Color(0xffFFC0E1), Color(0xffF02980)],
      ),
    );
  }

  Widget _buildRowItemsCatalog() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 575.0 - 40.0 - 511.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProductCard(
              productItem: Product(
                type: 'Сыворотка',
                title: 'Muse Serum Supreme',
                price: '10 195 ₽',
                assetUrl: 'assets/images/product/stock_muse.png',
                stock: '10 195 ₽',
              ),
              width: 112.85,
              height: 154.59,
              top: 11.41,
              topShadow: 15.43,
              left: 22.84,
              leftShadow: 27.21,
            ),
            ProductCard(
              productItem: Product(
                type: 'Крем',
                title: 'Unstress Revitalizing Toner',
                price: '3195 ₽',
                assetUrl: 'assets/images/product/stock_cream.png',
                stock: '1595 ₽',
              ),
              width: 111.0,
              height: 151.0,
              top: 19.0,
              left: 25.68,
              topShadow: 25.0,
              leftShadow: 30.68,
              decoration: '1+1',
            ),
            ProductCard(
              productItem: Product(
                type: 'Тоник',
                title: 'Unstress Revitalizing Toner',
                price: '3095 ₽',
                assetUrl: 'assets/images/product/stock_toner.png',
                stock: '3095 ₽',
              ),
              width: 125.0,
              height: 172.0,
              top: 6.0,
              left: 14.84,
              topShadow: 9.0,
              leftShadow: 21.84,
            ),
          ],
        ),
      ),
    );
  }
}
