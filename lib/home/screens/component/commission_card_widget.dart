import 'package:flutter/material.dart';
import 'package:video_feed/common/extension/text_theme_extension.dart';
import 'package:video_feed/styles/app_colors.dart';

class CommissionCard extends StatelessWidget {
  final String commissionType;
  final String commissionAmount;

  const CommissionCard({
    Key? key,
    required this.commissionType,
    required this.commissionAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.slate, // Assuming AppColors is defined elsewhere
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Commission Type: $commissionType",
                  style: context.textTheme.bodySmall,
                ),
                Text(
                  "My Commission: $commissionAmount",
                  style: context.textTheme.bodySmall,
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.verified,
              color: AppColors.primary, // Assuming AppColors.primary is defined
            ),
          ],
        ),
      ),
    );
  }
}
