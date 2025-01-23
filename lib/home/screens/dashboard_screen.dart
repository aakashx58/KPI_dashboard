import 'package:flutter/material.dart';
import 'package:video_feed/common/extension/text_theme_extension.dart';
import 'package:video_feed/home/screens/widget/info_grid_widget.dart';
import 'package:video_feed/home/screens/component/commission_card_widget.dart';
import 'package:video_feed/home/screens/widget/monthly_revenue_chart.dart';
import 'package:video_feed/home/screens/widget/profile_grid_widget.dart';
import 'package:video_feed/styles/app_colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CommissionCard(
                  commissionType: "Company", commissionAmount: "Rs 20 (Fixed)"),
              const SizedBox(height: 24),
              const InfoGridWidget(),
              const SizedBox(height: 24),
              const MonthlyRevenueChart(),
              const SizedBox(height: 24),
              ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "Provider",
                    style: context.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  trailing: const Text('View All',
                      style: TextStyle(color: AppColors.primary)),
                  onTap: () {}),
              const ProfileGridWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
