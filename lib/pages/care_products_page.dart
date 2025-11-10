import 'package:beauty_store/shared/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class CareProductsPage extends StatefulWidget {
  const CareProductsPage({super.key});

  @override
  State<StatefulWidget> createState() => _CareProductsPageState();
}

class _CareProductsPageState extends State<CareProductsPage> {
  int _currentNavIndex = 1;

  void _onNavItemTapped(int index) {
    if (index == _currentNavIndex) return;

    setState(() {
      _currentNavIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
        break;
      case 1:
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/catalog',
          (route) => false,
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar (
        currentIndex: _currentNavIndex,
        onTap: _onNavItemTapped,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 63, left: 16, right: 16),
          child: Column(
            children: [
              // _buildSkinTypeTitle(context),
              // _buildMenuSection(context),
            ],
          ),
        ),
      ),
    );
  }

}
