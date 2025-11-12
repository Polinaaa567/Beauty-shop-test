import 'package:flutter/material.dart';

class CurrentCareRoutine extends StatelessWidget {
  final String title;
  final Widget asset;
  final double top;
  final double left;

  const CurrentCareRoutine({
    super.key,
    required this.title,
    required this.asset,
    required this.top,
    required this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 81.0,
      height: 101.0,
      margin: const EdgeInsets.only(right: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 81.0,
            height: 75.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(
                color: Colors.white.withOpacity(0.5),
                width: 3.0,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: top,
                  left: left,
                  child: Opacity(opacity: 0.06, child: asset),
                ),
              ],
            ),
          ),
          Text(
            title,
            overflow:  TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(
              fontSize: 12.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
