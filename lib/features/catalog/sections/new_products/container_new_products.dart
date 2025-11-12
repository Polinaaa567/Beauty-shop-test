import 'package:beauty_store/core/entities/product.dart';
import 'package:beauty_store/shared/widgets/product_card.dart';
import 'package:beauty_store/shared/widgets/section_header_title.dart';

import 'package:flutter/material.dart';

class NewProductsSection extends StatelessWidget {
  const NewProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_buildTitleCatalog(), _buildRowItemsCatalog()],
    );
  }

  Widget _buildTitleCatalog() {
    return const Padding(
      padding: EdgeInsets.only(top: 15.0, left: 16.0),
      child: SectionHeaderTitle(
        title: 'Новинки',
        colors: [Color(0xffE4FEF9), Color(0xff66F6DC)],
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
              width: 125.0,
              height: 172.0,
              top: 6.0,
              left: 14.84,
              topShadow: 9.0,
              leftShadow: 21.84,
            ),
            ProductCard(
              productItem: Product(
                type: 'Тоник',
                title: 'Unstress Revitalizing Toner',
                price: '3095 ₽',
                assetUrl: 'assets/images/product/new_tonic.png',
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
