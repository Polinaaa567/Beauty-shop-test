import 'package:flutter/material.dart';

class HeadersButtonBackTitle extends StatelessWidget {
  final String title;

  const HeadersButtonBackTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.chevron_left_rounded, size: 30.0),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
