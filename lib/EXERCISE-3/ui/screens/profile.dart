import 'package:flutter/material.dart';
import 'package:flutter_application_1/EXERCISE-3/model/profile_tile_model.dart';

import '../theme/theme.dart';

class ProfileApp extends StatelessWidget {
  final ProfileData profileData;
  const ProfileApp({super.key, required this.profileData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary.withAlpha(100),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'CADT student Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 40),
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(profileData.avatarUrl),
          ),
          const SizedBox(height: 20),
          Text(
            profileData.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          Text(
            profileData.position,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          Column(
            children: profileData.tiles.map((tile) {
              return ProfileTile(
                icon: tile.icon,
                title: tile.title,
                value: tile.value,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          leading: Icon(icon, color: AppColors.primary),
          title: Text(title),
          subtitle: Text(value),
        ),
      ),
    );
  }
}
