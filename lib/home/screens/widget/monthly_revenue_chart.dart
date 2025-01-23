import 'package:flutter/material.dart';
import 'package:video_feed/styles/app_colors.dart';

class MonthlyRevenueChart extends StatelessWidget {
  const MonthlyRevenueChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 319,
      height: 201,
      child: Stack(
        children: <Widget>[
          // Title
          const Positioned(
            top: 0,
            left: 70,
            child: Text(
              'Monthly Revenue USD',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(28, 31, 52, 1),
                fontFamily: 'Work Sans',
                fontSize: 18,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          // Graph Body
          Positioned(
            top: 37,
            left: 0,
            child: SizedBox(
              width: 319,
              height: 164,
              child: Stack(
                children: <Widget>[
                  // Revenue Labels
                  const Positioned(
                    top: 0,
                    left: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '15000',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          '10000',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          '5000',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          '0',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Grid Lines
                  Positioned(
                    top: 0,
                    left: 55,
                    child: Column(
                      children: List.generate(5, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Container(
                            width: 264,
                            height: 1,
                            color: AppColors.grey200,
                          ),
                        );
                      }),
                    ),
                  ),
                  // Month Labels
                  Positioned(
                    top: 150,
                    left: 56,
                    child: Row(
                      children: [
                        for (var month in [
                          'Jan',
                          'Feb',
                          'Mar',
                          'Apr',
                          'May',
                          'Jun',
                          'Jul',
                          'Aug'
                        ])
                          Padding(
                            padding: const EdgeInsets.only(right: 13),
                            child: Text(
                              month,
                              style: const TextStyle(
                                color: AppColors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  // Bars for Revenue
                  // January Bar
                  Positioned(
                    bottom: 40,
                    left: 62,
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                          height: 55,
                          color: AppColors.primary,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  // January Bar
                  Positioned(
                    top: 37,
                    right: 215,
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                          height: 87,
                          color: AppColors.primary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
