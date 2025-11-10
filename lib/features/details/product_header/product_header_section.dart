import 'package:beauty_store/core/entities/headers_info.dart';
import 'package:beauty_store/features/details/product_header/product_image_slider.dart';
import 'package:beauty_store/features/details/product_header/product_info_header_section.dart';

import 'package:flutter/material.dart';

class ProductHeaderSection extends StatefulWidget {
  const ProductHeaderSection({super.key});

  @override
  State<ProductHeaderSection> createState() => _ProductHeaderSectionState();
}

class _ProductHeaderSectionState extends State<ProductHeaderSection> {
  final List<HeadersInfo> info = [
    HeadersInfo(
      heightAsset: 465,
      assetUrl: 'assets/images/headers/cream1.png',
      title: 'Скидка -15%',
      description: 'HA EYE & NECK SERUM',
      type: 'Сыворотка',
      buttonText: 'Перейти к акции',
    ),
    HeadersInfo(
      heightAsset: 483,
      assetUrl: 'assets/images/headers/headers2.png',
      title: '5 средств',
      type: 'для ухода за сухой ',
      description: 'кожей зимой',
      buttonText: 'К разделу',
    ),
    HeadersInfo(
      heightAsset: 610,
      assetUrl: 'assets/images/headers/headers3.png',
      title: 'Мужской уход',
      type: 'Для чувствительной',
      description: 'и проблемной кожи',
      buttonText: 'К разделу',
    ),
  ];

  int _currentPage = 0;

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(1, 255, 255, 255),
      height: 359,
      child: Stack(
        children: [
          PageViewCustom(
            headersInfo: info,
            onPageChanged: _onPageChanged,
            currentPage: _currentPage,
          ),
          ProductInfoHeaderSection(
            headersInfo: info,
            currentPage: _currentPage,
          ),
        ],
      ),
    );
  }
}
