import 'package:flutter/material.dart';

class SectionHeaderTitle extends StatelessWidget {
  final String title;
  final List<Color> colors;

  const SectionHeaderTitle({
    super.key,
    required this.title,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            width: 118,
            height: 4,
            decoration: BoxDecoration(
              color: Color(0xffD9D9D9),
              gradient: LinearGradient(colors: colors),
            ),
          ),
        ],
      ),
    );
  }
}
