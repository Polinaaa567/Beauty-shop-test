import 'package:beauty_store/shared/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class SkinTypePage extends StatefulWidget {
  const SkinTypePage({super.key});

  @override
  State<StatefulWidget> createState() => _SkinTypePageState();
}

class _SkinTypePageState extends State<SkinTypePage> {
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
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentNavIndex,
        onTap: _onNavItemTapped,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 63, left: 16, right: 16),
          child: Column(
            children: [
              _buildSkinTypeTitle(context),
              _buildMenuSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkinTypeTitle(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamedAndRemoveUntil(
            context,
            '/catalog',
            (route) => false,
          ),
          child: Icon(Icons.chevron_left_sharp, size: 30),
        ),
        Expanded(
          child: Center(
            child: Text(
              'По типу кожи',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMenuSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildMenuItem(
            title: 'Жирная',
            onTap: () => Navigator.pushNamed(context, '/catalog/type/products'),
          ),
          _buildMenuItem(title: 'Комбинированная'),
          _buildMenuItem(title: 'Нормальная'),
          _buildMenuItem(title: 'Сухая'),
          _buildMenuItem(title: 'Любой тип'),
        ],
      ),
    );
  }

  Widget _buildMenuItem({required String title, Function()? onTap}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: double.infinity,
          child: Wrap(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                ),
                textDirection: TextDirection.ltr,
                softWrap: true,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
