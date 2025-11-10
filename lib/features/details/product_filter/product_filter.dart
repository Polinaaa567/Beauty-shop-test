import 'package:beauty_store/features/details/product_filter/product_filter_card.dart';
import 'package:flutter/material.dart';

class ProductFilterRow extends StatelessWidget {
  const ProductFilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 1552.47 - 1184 - 327.47,
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Expanded(child: ProductFilterCard(title: "Для очищения")),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: ProductFilterCard(title: "Для увлажнения"),
                  ),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Expanded(child: ProductFilterCard(title: "Для питания")),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: ProductFilterCard(title: "Для омоложения"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
