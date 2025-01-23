import 'package:flutter/material.dart';
import 'package:video_feed/common/extension/text_theme_extension.dart';
import 'package:video_feed/home/screens/chat_screen.dart';
import 'package:video_feed/home/screens/dashboard_screen.dart';
import 'package:video_feed/home/screens/friends_screen.dart';
import 'package:video_feed/styles/app_colors.dart';
import 'package:video_feed/home/screens/profile_screen.dart';
import 'package:video_feed/common/constants/string_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  int _currentIndex = 0;

  List<String> videoUrls = VideoUrls.urls;

  // List of screens along with their titles
  final List<Map<String, dynamic>> _screensWithTitles = [
    {'title': "Home", 'screen': const DashboardScreen()},
    {'title': "Friends", 'screen': const FriendsScreen()},
    {'title': "Chat", 'screen': const ChatScreen()},
    {'title': "Profile", 'screen': ProfileScreen()},
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          _screensWithTitles[_currentIndex]['title'],
          style: context.textTheme.headlineSmall
              ?.copyWith(color: AppColors.background),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: AppColors.background,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _screensWithTitles[_currentIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.shadow,
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Friends",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
