import 'package:flutter/material.dart';

class ProductInfoHeaderSection extends StatelessWidget {
  const ProductInfoHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 193),
      padding: EdgeInsets.only(top: 52, left: 24, right: 12),
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
            'Скидка -15%',
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
                    'Сыворотка',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'VelaSans',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'HA EYE & NECK SERUM',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'VelaSans',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: BoxBorder.all(color: Colors.white, width: 1),
                ),
                width: 120,
                height: 36,
                child: Center(
                  child: Text(
                    'Перейти к акции',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
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
