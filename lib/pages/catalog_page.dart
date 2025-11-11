import 'package:beauty_store/core/layout/main_layout.dart';
import 'package:beauty_store/features/personal_care/widgets/skincare_consultation_card.dart';

import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      currentIndex: 1,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBar(),
            _buildMenuSection(context),
            SkincareConsultationCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: const EdgeInsets.only(top: 63, left: 16, right: 16),
      height: 48,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color(0xff000000).withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: 'Raleway',
            color: const Color(0xff000000).withOpacity(0.5),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          border: InputBorder.none,
          icon: Image.asset(
            'assets/images/icons/icon_search.png',
            width: 20,
            height: 20,
          ),
          hintText: 'Поиск',
        ),
      ),
    );
  }

  Widget _buildMenuSection(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      margin: EdgeInsets.only(top: 39, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildMenuItem(title: 'Назначение'),
          _buildMenuItem(title: 'Тип средства'),
          _buildMenuItem(
            title: 'Тип кожи',
            onTap: () => Navigator.pushNamed(context, '/catalog/type'),
          ),
          _buildMenuItem(title: 'Линия косметики'),
          _buildMenuItem(title: 'Наборы'),
          _buildMenuItem(title: 'Акции', hasDecoration: true),
          _buildMenuItem(title: 'Консультация с косметологом'),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required String title,
    bool hasDecoration = false,
    Function()? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 21.5),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: double.infinity,
          child: Wrap(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                ),
                textDirection: TextDirection.ltr,
                softWrap: true,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
              ),

              if (hasDecoration)
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Image.asset(
                    'assets/images/icons/icon_star_pink.png',
                    width: 25,
                    height: 25,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
