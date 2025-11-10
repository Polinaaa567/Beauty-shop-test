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
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xff70757F),
        selectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),

        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Image.asset(
                "assets/images/icons/icon_home.png",
                width: 16,
                color: Color(0xff70757F),
              ),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Image.asset(
                "assets/images/icons/icon_home.png",
                width: 16,
                color: Colors.black,
              ),
            ),
            label: "Главная",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Image.asset(
                "assets/images/icons/icon_search.png",
                width: 16,
                color: Color(0xff70757F),
              ),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Image.asset(
                "assets/images/icons/icon_search.png",
                width: 16,
                color: Colors.black,
              ),
            ),
            label: "Каталог",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Image.asset(
                "assets/images/icons/icon_shop.png",
                width: 16,
                color: Color(0xff70757F),
              ),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Image.asset(
                "assets/images/icons/icon_shop.png",
                width: 16,
                color: Colors.black,
              ),
            ),
            label: "Корзина",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Image.asset(
                "assets/images/icons/icon_profile.png",
                width: 16,
                color: Color(0xff70757F),
              ),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Image.asset(
                "assets/images/icons/icon_profile.png",
                width: 16,
                color: Colors.black,
              ),
            ),
            label: "Профиль",
          ),
        ],
      ),
    );
  }
}
