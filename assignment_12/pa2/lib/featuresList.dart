import 'package:flutter/material.dart';

class FeaturesList extends StatelessWidget {
  const FeaturesList({super.key});

  static const List<_FeatureItem> features = [
    _FeatureItem(
      icon: Icons.speed,
      iconBgColor: Color(0xFFEDE8F8),
      iconColor: Color(0xFF7C5CBF),
      title: 'Fast Performance',
      subtitle: 'Lightning fast app performance',
    ),
    _FeatureItem(
      icon: Icons.security,
      iconBgColor: Color(0xFFE8F0FE),
      iconColor: Color(0xFF4285F4),
      title: 'Secure',
      subtitle: 'Your data is safe with us',
    ),
    _FeatureItem(
      icon: Icons.palette,
      iconBgColor: Color(0xFFFFF3E0),
      iconColor: Color(0xFFF5A623),
      title: 'Beautiful UI',
      subtitle: 'Modern and clean design',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: features
          .map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: _FeatureTile(item: item),
            ),
          )
          .toList(),
    );
  }
}


class _FeatureItem {
  final IconData icon;
  final Color iconBgColor;
  final Color iconColor;
  final String title;
  final String subtitle;

  const _FeatureItem({
    required this.icon,
    required this.iconBgColor,
    required this.iconColor,
    required this.title,
    required this.subtitle,
  });
}


class _FeatureTile extends StatelessWidget {
  final _FeatureItem item;
  const _FeatureTile({ required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.20),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            // Icon Badge
            Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: item.iconBgColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(item.icon, color: item.iconColor, size: 22),
            ),
            const SizedBox(width: 14),

         
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    item.subtitle,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            // Arrow
            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}