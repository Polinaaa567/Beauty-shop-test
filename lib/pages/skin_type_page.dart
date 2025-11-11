import 'package:beauty_store/core/layout/main_layout.dart';
import 'package:beauty_store/shared/widgets/headers_button_back_title.dart';

import 'package:flutter/material.dart';

class SkinTypePage extends StatelessWidget {
  const SkinTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      currentIndex: 1,
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 63, left: 16, right: 16),
          child: Column(
            children: [
              HeadersButtonBackTitle(title: 'По типу кожи'),
              _buildMenuSection(context),
            ],
          ),
        ),
      ),
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
      child: InkWell(
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
