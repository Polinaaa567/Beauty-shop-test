import 'package:beauty_store/entities/product.dart';
import 'package:beauty_store/ui/share_widgets/product_card.dart';
import 'package:beauty_store/ui/share_widgets/section_header_title.dart';

import 'package:flutter/material.dart';

class ContainerNewProduct extends StatelessWidget {
  const ContainerNewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 15),
          child: SectionHeaderTitle(
            title: 'Новинки',
            colors: [Color(0xffE4FEF9), Color(0xff66F6DC)],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, top: 575 - 40 - 511),
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
                  width: 125,
                  height: 172,
                  top: 6,
                  left: 14.84,
                  topShadow: 9,
                  leftShadow: 21.84,
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
