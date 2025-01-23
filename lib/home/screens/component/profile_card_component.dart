import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;
  final String additionalLocation;
  final Color powerIconColor;
  final Color locationIconColor;
  final List<IconData> locationIcons; // List to hold multiple icons

  const ProfileCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.location,
    required this.additionalLocation,
    this.powerIconColor = Colors.blue, // Default color for power icon
    this.locationIconColor = Colors.red, // Default color for location icons
    this.locationIcons = const [
      Icons.location_on,
      Icons.place,
      Icons.map
    ], // Default icons
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 157,
      height: 216,
      child: Stack(
        children: <Widget>[
          // Background card container
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 157,
              height: 216,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
          ),
          // Image container
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 157,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: const Color.fromRGBO(240, 240, 250, 1),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          // Profile info section
          Positioned(
            top: 130,
            left: 21,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: <Widget>[
                      _buildChangableIcon(locationIcons[0]), // First icon
                      const SizedBox(width: 10),
                      _buildChangableIcon(locationIcons[1]), // Second icon
                      const SizedBox(width: 10),
                      _buildChangableIcon(locationIcons[2]), // Third icon
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Avatar image container (Power icon)
          Positioned(
            top: 10,
            left: 121,
            child: Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
              child: ClipOval(
                child: Icon(
                  Icons.power_settings_new,
                  size: 22,
                  color: powerIconColor, // Set custom color for power icon
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build the location icon container
  Widget _buildChangableIcon(IconData icon) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromRGBO(240, 240, 250, 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Icon(
        icon,
        size: 16,
        color: locationIconColor, // Set custom color for location icons
      ),
    );
  }
}
