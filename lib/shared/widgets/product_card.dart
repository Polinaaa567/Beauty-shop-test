import 'dart:ui';

import 'package:beauty_store/core/entities/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product productItem;
  final double width;
  final double height;
  final double top;
  final double topShadow;
  final double left;
  final double leftShadow;
  final String? decoration;

  const ProductCard({
    super.key,
    required this.productItem,
    required this.width,
    required this.height,
    required this.top,
    required this.left,
    required this.topShadow,
    required this.leftShadow,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162.17,
      height: 278.47,
      padding: EdgeInsets.only(right: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffF4F4F4),
              borderRadius: BorderRadius.circular(15.0),
            ),
            width: 161.01,
            height: 187.65,
            child: Stack(
              children: [
                Positioned(
                  top: topShadow,
                  left: leftShadow,
                  child: Opacity(
                    opacity: 0.3,
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                        sigmaX: 3.47 / 2.0,
                        sigmaY: 3.47 / 2.0,
                      ),
                      child: Image.asset(
                        productItem.shadow != null
                            ? productItem.shadow ?? ""
                            : productItem.assetUrl,
                        width: width,
                        height: height,
                        fit: BoxFit.cover,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: top,
                  left: left,
                  child: Image.asset(
                    productItem.assetUrl,
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                  ),
                ),
                if (decoration != null)
                  Positioned(
                    top: 41.0,
                    left: 122.0,
                    child: Text(
                      decoration ?? "",
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffF47DDA),
                      ),
                    ),
                  ),
                if (productItem.stock != null)
                  Positioned(
                    top: 8.0,
                    left: 120.0,
                    child: Image.asset(
                      'assets/images/icons/icon_star.png',
                      width: 25.0,
                      height: 25.0,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productItem.type,
                  style: TextStyle(
                    fontSize: 11.58,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000).withOpacity(0.8),
                  ),
                ),
                SizedBox(height: 2.0),
                Text(
                  productItem.title,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(height: 3.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (productItem.stock != null)
                      Container(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Text(
                          productItem.stock ?? "",
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    Text(
                      productItem.price,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: productItem.stock != null
                            ? const Color(0xff000000).withOpacity(0.2)
                            : const Color(0xff000000),
                        decoration: productItem.stock != null
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
