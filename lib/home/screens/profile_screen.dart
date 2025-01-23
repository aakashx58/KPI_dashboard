// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:video_feed/common/extension/text_theme_extension.dart';
import 'package:video_feed/common/utils/snackbar_utils.dart';
import 'package:video_feed/components/utils/dialog_utils.dart';
import 'package:video_feed/styles/app_assets.dart';
import 'package:video_feed/styles/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;

  ProfileScreen({super.key});

  signout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                width: 108,
                height: 108,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(AppAssets.avatar),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                "Aakash Rajbanshi",
                style: context.textTheme.headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                FirebaseAuth.instance.currentUser!.email!,
                style: const TextStyle(color: AppColors.shadow),
              ),
              const SizedBox(height: 32),
              Container(
                width: 323,
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.slate,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Current Plan",
                              style: context.textTheme.bodySmall),
                          Text("Valid Till",
                              style: context.textTheme.bodySmall),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Basic",
                              style: context.textTheme.bodySmall
                                  ?.copyWith(fontWeight: FontWeight.bold)),
                          Text("31st Dec 2022",
                              style: context.textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.work,
                    color: AppColors.grey,
                  ),
                  title: Text(
                    "My Service",
                    style: context.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primary,
                    size: 16,
                  ),
                  onTap: () {}),
              const Divider(
                thickness: 1,
                color: AppColors.grey300,
                height: 0,
              ),
              ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.house,
                    color: AppColors.grey,
                  ),
                  title: Text(
                    "Houseman",
                    style: context.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primary,
                    size: 16,
                  ),
                  onTap: () {}),
              const Divider(
                thickness: 1,
                color: AppColors.grey300,
                height: 0,
              ),
              ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.map,
                    color: AppColors.grey,
                  ),
                  title: Text(
                    "Service Address",
                    style: context.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primary,
                    size: 16,
                  ),
                  onTap: () {}),
              const Divider(
                thickness: 1,
                color: AppColors.grey300,
                height: 0,
              ),
              ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.money,
                    color: AppColors.grey,
                  ),
                  title: Text(
                    "Taxes",
                    style: context.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primary,
                    size: 16,
                  ),
                  onTap: () {}),
              const Divider(
                thickness: 1,
                color: AppColors.grey300,
                height: 0,
              ),
              ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.refresh,
                    color: AppColors.grey,
                  ),
                  title: Text(
                    "Earning List",
                    style: context.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primary,
                    size: 16,
                  ),
                  onTap: () {}),
              const Divider(
                thickness: 1,
                color: AppColors.grey300,
                height: 0,
              ),
              ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.sunny,
                    color: AppColors.grey,
                  ),
                  title: Text(
                    "App Theme",
                    style: context.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primary,
                    size: 16,
                  ),
                  onTap: () {}),
              const Divider(
                thickness: 1,
                color: AppColors.grey300,
                height: 0,
              ),
              ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.language,
                    color: AppColors.grey,
                  ),
                  title: Text(
                    "App Language",
                    style: context.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primary,
                    size: 16,
                  ),
                  onTap: () {}),
              const Divider(
                thickness: 1,
                color: AppColors.grey300,
                height: 0,
              ),
              ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.password,
                    color: AppColors.grey,
                  ),
                  title: Text(
                    "Change Password",
                    style: context.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primary,
                    size: 16,
                  ),
                  onTap: () {}),
              const Divider(
                thickness: 1,
                color: AppColors.grey300,
                height: 0,
              ),
              ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.info,
                    color: AppColors.grey,
                  ),
                  title: Text(
                    "About",
                    style: context.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primary,
                    size: 16,
                  ),
                  onTap: () {}),
              const SizedBox(height: 32),
              TextButton(
                onPressed: () async {
                  final shouldLogout = await DialogUtils.confirmationDialog(
                    context: context,
                    title: 'Log Out',
                    subtitle: 'Are you sure you want to log out?',
                    positiveLabel: 'Yes',
                    cancelLabel: 'Cancel',
                  );
                  if (shouldLogout ?? false) {
                    try {
                      await signout();
                    } catch (e) {
                      SnackBarUtils.showCustomSnackBar(
                        context: context,
                        content: 'Something went wrong',
                      );
                    }
                  }
                },
                child: Text(
                  "Logout",
                  style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
