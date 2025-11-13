import 'dart:ui';

import 'package:beauty_store/core/entities/headers_info.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
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
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  ScrollPhysics get _scrollPhysics {
    if (kIsWeb) {
      return const PageScrollPhysics(parent: AlwaysScrollableScrollPhysics());
    }else {
      return const PageScrollPhysics();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 359.0,
      child: Stack(
        children: [
          Positioned.fill(
            top: -45.0,
            child: PageView.builder(
              controller: _pageController,
              itemCount: widget.headersInfo.length,
              pageSnapping: true,
              physics: _scrollPhysics,
              scrollBehavior: kIsWeb
                  ? ScrollConfiguration.of(context).copyWith(
                      dragDevices: {
                        PointerDeviceKind.touch,
                        PointerDeviceKind.mouse,
                      },
                    )
                  : null,
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
            top: 50.0,
            left: 18.0,
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
          height: 8.0,
          width: 8.0,
          margin: EdgeInsets.only(right: 4.0),
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
