import 'package:flutter/material.dart';

class ProductCategoriesRow extends StatelessWidget {
  const ProductCategoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 384 - 359, left: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CategoryItem(
              title: 'Наборы',
              backgroundColor: Color(0xffF8E8EB),
              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                    left: -5,
                    child: Image.asset(
                      'assets/images/categories/set1.png',
                      width: 52.8,
                      height: 72,
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
            CategoryItem(
              title: 'Для лица',
              assetUrl: 'assets/images/categories/for_face.png',
            ),
            CategoryItem(
              title: 'Для глаз',
              backgroundColor: Color(0xffE4F3F8),
              child: Stack(
                children: [
                  Positioned(
                    top: 4,
                    left: -5,
                    child: Image.asset(
                      'assets/images/categories/for_eyes.png',
                      width: 106,
                      height: 145,
                    ),
                  ),
                  Positioned(
                    top: -90,
                    left: -46,
                    child: Image.asset(
                      'assets/images/categories/for_eyes.png',
                      width: 106,
                      height: 145,
                    ),
                  ),
                ],
              ),
            ),
            CategoryItem(
              title: 'Для тела',
              assetUrl: 'assets/images/categories/for_body.png',
            ),
            CategoryItem(
              title: 'Умывание',
              assetUrl: 'assets/images/categories/for_washing.png',
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final String? assetUrl;
  final Color? backgroundColor;
  final Widget? child;

  const CategoryItem({
    super.key,
    required this.title,
    this.assetUrl,
    this.backgroundColor = const Color(0xffF4F4F4),
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12),
      child: Container(
        width: 72,
        height: 95,
        child: Column(
          children: [
            Container(
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child:
                    child ??
                    (assetUrl != null
                        ? Image.asset(assetUrl ?? '', fit: BoxFit.cover)
                        : const SizedBox()),
              ),
            ),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
