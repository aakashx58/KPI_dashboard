import 'package:flutter/material.dart';
import 'package:video_feed/home/screens/component/profile_card_component.dart';
import 'package:video_feed/styles/app_assets.dart';
import 'package:video_feed/styles/app_colors.dart';

class ProfileGridWidget extends StatelessWidget {
  const ProfileGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 16.0,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 0.7,
      children: const [
        ProfileCard(
          imageUrl: AppAssets.person4,
          name: 'Rickey Ledner',
          location: 'New York',
          additionalLocation: 'California',
          powerIconColor: AppColors.green400,
          locationIconColor: AppColors.primary,
          locationIcons: [Icons.contact_emergency, Icons.mail, Icons.chat],
        ),
        ProfileCard(
          imageUrl: AppAssets.person3,
          name: 'Jarvis Robel',
          location: 'New York',
          additionalLocation: 'California',
          powerIconColor: AppColors.seed,
          locationIconColor: AppColors.primary,
          locationIcons: [Icons.contact_emergency, Icons.mail, Icons.chat],
        ),
        ProfileCard(
          imageUrl: AppAssets.person2,
          name: 'Araceli Ryan',
          location: 'New York',
          additionalLocation: 'California',
          powerIconColor: AppColors.seed,
          locationIconColor: AppColors.primary,
          locationIcons: [Icons.contact_emergency, Icons.mail, Icons.chat],
        ),
        ProfileCard(
          imageUrl: AppAssets.person5,
          name: 'Trudie Rice',
          location: 'New York',
          additionalLocation: 'California',
          powerIconColor: AppColors.seed,
          locationIconColor: AppColors.primary,
          locationIcons: [Icons.contact_emergency, Icons.mail, Icons.chat],
        ),
      ],
    );
  }
}
