import 'package:beauty_store/core/entities/headers_info.dart';

import 'package:flutter/material.dart';

class ProductInfoHeaderSection extends StatelessWidget {
  final List<HeadersInfo> headersInfo;
  final int currentPage;

  const ProductInfoHeaderSection({
    super.key,
    required this.headersInfo,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    final currentItem = headersInfo[currentPage];

    return Container(
      margin: EdgeInsets.only(top: 193.0),
      padding: EdgeInsets.only(top: 52.0, left: 24.0, right: 12.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff00000000), Color(0xff2C2C2C)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            currentItem.title,
            style: TextStyle(
              fontSize: 35.05,
              fontFamily: 'VelaSans',
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentItem.type,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'VelaSans',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    currentItem.description,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'VelaSans',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  border: BoxBorder.all(color: Colors.white, width: 1.0),
                ),
                width: 120.0,
                height: 36.0,
                child: Center(
                  child: Text(
                    currentItem.buttonText,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
