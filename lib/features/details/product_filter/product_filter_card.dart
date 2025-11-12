import 'package:flutter/material.dart';

class ProductFilterCard extends StatelessWidget {
  final String title;

  const ProductFilterCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: BoxBorder.all(color: Colors.black.withOpacity(0.1)),
        borderRadius: BorderRadius.circular(9.0),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Raleway',
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: Color(0xff080808),
          ),
        ),
      ),
    );
  }
}
