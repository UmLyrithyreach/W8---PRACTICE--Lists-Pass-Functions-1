import 'package:flutter/material.dart';
import 'package:flutter_application_1/EXERCISE-3/model/profile_tile_model.dart';

import 'ui/screens/profile.dart';

class Ex3 extends StatelessWidget{
  final ProfileData profileData;
  const Ex3({super.key, required this.profileData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileApp(profileData: profileData),
    );
  }
}
