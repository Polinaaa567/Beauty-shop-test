import 'package:beauty_store/core/entities/product.dart';
import 'package:beauty_store/shared/widgets/product_card.dart';
import 'package:beauty_store/shared/widgets/section_header_title.dart';

import 'package:flutter/material.dart';

class BestSellersSection extends StatelessWidget {
  const BestSellersSection({super.key});

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
      padding: EdgeInsets.only(top: 15, left: 16),
      child: SectionHeaderTitle(
        title: 'Хиты',
        colors: [Color(0xffF86614), Color(0xffFCBC5C)],
      ),
    );
  }

  Widget _buildRowItemsCatalog() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 575 - 40 - 511, bottom: 51),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProductCard(
              productItem: Product(
                type: 'Сыворотка',
                title: 'Forever Young- Total Renewal Serum',
                price: '10 195 ₽',
                assetUrl: 'assets/images/product/hit_serum.png',
                shadow: 'assets/images/product/hit_serum_shadow.png',
              ),
              width: 112.85,
              height: 154.59,
              top: 11.41,
              left: 22.84,
              topShadow: 15.43,
              leftShadow: 27.21,
            ),
            ProductCard(
              productItem: Product(
                type: 'Осветляющая маска',
                title: 'Illustious Mask',
                price: '1595 ₽',
                assetUrl: 'assets/images/product/hit_mask.png',
              ),
              width: 111,
              height: 151,
              top: 16,
              left: 27.67,
              topShadow: 20,
              leftShadow: 32.68,
            ),
            ProductCard(
              productItem: Product(
                type: 'Тоник',
                title: 'Unstress Revitalizing Toner',
                price: '3095 ₽',
                assetUrl: 'assets/images/product/stock_toner.png',
              ),
              width: 125,
              height: 172,
              top: 6,
              left: 14.84,
              topShadow: 9,
              leftShadow: 21.84,
            ),
          ],
        ),
      ),
    );
  }
}
