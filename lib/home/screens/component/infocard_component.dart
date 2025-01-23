import 'package:flutter/material.dart';
import 'package:video_feed/styles/app_colors.dart';
import 'package:video_feed/common/extension/text_theme_extension.dart';

class InfoCard extends StatelessWidget {
  final String count; // Number or value to display prominently.
  final String label; // Descriptive label displayed below the count.
  final IconData icon; // Icon displayed on the top-right of the card.
  final Color cardColor; // Background color of the card.
  final Color iconColor; // Color of the icon.
  final Color countColor; // Color of the count text.

  const InfoCard({
    super.key,
    required this.count,
    required this.label,
    required this.icon,
    this.cardColor = AppColors.slate,
    this.iconColor = AppColors.background,
    this.countColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0), // Adjust padding to avoid overflow
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:
                  MainAxisAlignment.center, // Ensure label isn't cut off
              children: [
                Text(
                  count,
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: countColor,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  label,
                  style: context.textTheme.bodySmall
                      ?.copyWith(color: Colors.black),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.grey200,
              ),
              child: Icon(
                icon,
                color: iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
