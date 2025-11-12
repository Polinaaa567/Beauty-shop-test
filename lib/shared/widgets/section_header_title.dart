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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          width: 118.0,
          height: 4.0,
          decoration: BoxDecoration(
            color: const Color(0xffD9D9D9),
            gradient: LinearGradient(colors: colors),
          ),
        ),
      ],
    );
  }
}
