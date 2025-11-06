import 'package:flutter/material.dart';

class PageViewCustom extends StatefulWidget {
  const PageViewCustom({super.key});

  @override
  State<StatefulWidget> createState() => _PageViewCustomState();
}

class _PageViewCustomState extends State<PageViewCustom> {
  List<String> assetsCard = [
    'assets/images/cream1.png',
    'assets/images/cream2.png',
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          itemCount: assetsCard.length,
          pageSnapping: true,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          itemBuilder: (context, pagePosition) {
            return Container(
              child: Image.asset(assetsCard[pagePosition], fit: BoxFit.cover),
            );
          },
        ),

        Positioned(
          top: 50,
          left: 18,
          child: Row(children: _buildPageIndicator()),
        ),
      ],
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < assetsCard.length; i++) {
      indicators.add(
        Container(
          height: 8,
          width: 8,
          margin: EdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == i
                ? Color(0xffD9D9D9)
                : Color(0xffD9D9D9).withOpacity(0.5),
          ),
        ),
      );
    }
    return indicators;
  }
}
