import 'package:flutter/material.dart';
import 'package:video_feed/home/screens/component/infocard_component.dart';
import 'package:video_feed/styles/app_colors.dart';

class InfoGridWidget extends StatelessWidget {
  const InfoGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      childAspectRatio: 1.9,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        InfoCard(
          count: "20",
          label: "Total Bookings",
          icon: Icons.hourglass_empty_outlined,
          iconColor: AppColors.primary,
        ),
        InfoCard(
          count: "10",
          label: "Total Service",
          icon: Icons.check_circle_outline,
          iconColor: AppColors.primary,
        ),
        InfoCard(
          count: "5",
          label: "Houseman",
          icon: Icons.cancel_outlined,
          iconColor: AppColors.primary,
        ),
        InfoCard(
          count: "15",
          label: "Total Earnings",
          icon: Icons.attach_money,
          iconColor: AppColors.primary,
        ),
      ],
    );
  }
}
