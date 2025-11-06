import 'package:beauty_store/ui/headers/components/page_view_gallery_header.dart';
import 'package:beauty_store/ui/headers/components/product_info_header_section.dart';

import 'package:flutter/material.dart';

class ProductHeaderSection extends StatelessWidget {
  const ProductHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(1, 255, 255, 255),
      height: 359,
      child: Stack(
        children: [
          PageViewCustom(), 
          ProductInfoHeaderSection(),
        ],
      ),
    );
  }
}
