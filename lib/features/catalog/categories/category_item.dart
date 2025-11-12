import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String? assetUrl;
  final Color? backgroundColor;
  final Widget? child;

  const CategoryItem({
    super.key,
    required this.title,
    this.assetUrl,
    this.backgroundColor = const Color(0xffF4F4F4),
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: SizedBox(
        width: 72.0,
        height: 95.0,
        child: Column(
          children: [
            Container(
              height: 72.0,
              width: 72.0,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: child ?? _buildImageContent(),
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 12.0,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageContent() {
    if (assetUrl != null) {
      return Image.asset(
        assetUrl!,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return const Center(
            child: Icon(Icons.error_outline, color: Colors.grey),
          );
        },
      );
    }
    return const SizedBox();
  }
}
