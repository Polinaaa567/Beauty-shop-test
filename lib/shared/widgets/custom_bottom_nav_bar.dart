import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffCBCBD5), width: 0.5),
      ),
      child: BottomNavigationBar(
        backgroundColor: Color(0xffFFFFFF),
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 10.0,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Color(0xff70757F),
          fontSize: 10.0,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),

        items: [
          _buildBottomNavigationBarItem(
            assetUrl: "assets/images/icons/icon_home.png",
            label: "Главная",
          ),
          _buildBottomNavigationBarItem(
            assetUrl: "assets/images/icons/icon_search.png",
            label: "Каталог",
          ),
          _buildBottomNavigationBarItem(
            assetUrl: "assets/images/icons/icon_shop.png",
            label: "Корзина",
          ),
          _buildBottomNavigationBarItem(
            assetUrl: "assets/images/icons/icon_profile.png",
            label: "Профиль",
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required String label,
    required String assetUrl,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 5.0),
        child: Image.asset(assetUrl, width: 16.0, color: Color(0xff70757F)),
      ),
      activeIcon: Padding(
        padding: EdgeInsets.only(bottom: 5.0),
        child: Image.asset(assetUrl, width: 16.0, color: Colors.black),
      ),
      label: label,
    );
  }
}
