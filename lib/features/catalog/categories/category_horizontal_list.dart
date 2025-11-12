import 'package:beauty_store/features/catalog/categories/category_item.dart';

import 'package:flutter/material.dart';

class CategoryHorizontalList extends StatelessWidget {
  const CategoryHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CategoryItem(
              title: 'Наборы',
              backgroundColor: const Color(0xffF8E8EB),
              child: Stack(
                children: [
                  Positioned(
                    top: 15.0,
                    left: -5.0,
                    child: Image.asset(
                      'assets/images/categories/set1.png',
                      width: 52.8,
                      height: 72.0,
                    ),
                  ),
                  Positioned(
                    left: 28.8,
                    child: Image.asset(
                      'assets/images/categories/set2.png',
                      width: 37.8,
                      height: 85.2,
                    ),
                  ),
                ],
              ),
            ),
            const CategoryItem(
              title: 'Для лица',
              assetUrl: 'assets/images/categories/for_face.png',
            ),
            CategoryItem(
              title: 'Для глаз',
              backgroundColor: Color(0xffE4F3F8),
              child: Stack(
                children: [
                  Positioned(
                    top: 4.0,
                    left: -5.0,
                    child: Image.asset(
                      'assets/images/categories/for_eyes.png',
                      width: 106.0,
                      height: 145.0,
                    ),
                  ),
                  Positioned(
                    top: -90.0,
                    left: -46.0,
                    child: Image.asset(
                      'assets/images/categories/for_eyes.png',
                      width: 106.0,
                      height: 145.0,
                    ),
                  ),
                ],
              ),
            ),
            const CategoryItem(
              title: 'Для тела',
              assetUrl: 'assets/images/categories/for_body.png',
            ),
            const CategoryItem(
              title: 'Умывание',
              assetUrl: 'assets/images/categories/for_washing.png',
            ),
          ],
        ),
      ),
    );
  }
}
