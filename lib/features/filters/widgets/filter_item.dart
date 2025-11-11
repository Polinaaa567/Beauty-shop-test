import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onTap;

  const FilterItem({
    super.key,
    required this.title,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        SizedBox(height: 8),
        InkWell(
          onTap: onTap,

          child: Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
              color: Color(0xff000000).withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}
