import 'package:beauty_store/core/entities/headers_info.dart';
import 'package:flutter/material.dart';

class PageViewCustom extends StatefulWidget {
  final List<HeadersInfo> headersInfo;
  final Function(int) onPageChanged;
  final int currentPage;

  const PageViewCustom({
    super.key,
    required this.headersInfo,
    required this.onPageChanged,
    required this.currentPage,
  });

  @override
  State<StatefulWidget> createState() => _PageViewCustomState();
}

class _PageViewCustomState extends State<PageViewCustom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 359,
      child: Stack(
        children: [
          Positioned.fill(
            top: -45,
            child: PageView.builder(
              itemCount: widget.headersInfo.length,
              pageSnapping: true,
              onPageChanged: (int page) {
                setState(() {
                  widget.onPageChanged(page);
                });
              },
              itemBuilder: (context, pagePosition) {
                final item = widget.headersInfo[pagePosition];
                return Image.asset(item.assetUrl, fit: BoxFit.cover);
              },
            ),
          ),

          Positioned(
            top: 50,
            left: 18,
            child: Row(children: _buildPageIndicator()),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < widget.headersInfo.length; i++) {
      indicators.add(
        Container(
          height: 8,
          width: 8,
          margin: EdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.currentPage == i
                ? Color(0xffD9D9D9)
                : Color(0xffD9D9D9).withOpacity(0.5),
          ),
        ),
      );
    }
    return indicators;
  }
}
