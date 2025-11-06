import 'package:beauty_store/entities/product.dart';
import 'package:beauty_store/ui/share_widgets/product_card.dart';
import 'package:beauty_store/ui/share_widgets/section_header_title.dart';

import 'package:flutter/material.dart';

class ContainerStockProduct extends StatelessWidget {
  const ContainerStockProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15, left: 15),
          child: SectionHeaderTitle(
            title: 'Акции',
            colors: [Color(0xffFFC0E1), Color(0xffF02980)],
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
                  width: 111,
                  height: 151,
                  top: 19,
                  left: 25.68,
                  topShadow: 25,
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
