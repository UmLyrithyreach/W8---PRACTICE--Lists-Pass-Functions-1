// ignore_for_file: unused_import

import 'package:device_preview/device_preview.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Normal-Exercise/EXERCISE-1/ex_1_start.dart';
import 'package:flutter_application_1/Normal-Exercise/EXERCISE-2/main.dart';
import 'package:flutter_application_1/Normal-Exercise/EXERCISE-3/main.dart';
import 'package:flutter_application_1/Normal-Exercise/EXERCISE-3/model/profile_tile_model.dart';
import 'package:flutter_application_1/Normal-Exercise/EXERCISE-3/data/profile_data.dart';
import 'package:flutter_application_1/Normal-Exercise/EXERCISE-4/main.dart';



//  Exercise 3


// void main() => runApp(
//   DevicePreview(builder: (context) => MainApp(profileData: ronanProfile), enabled: !kReleaseMode),
// );
// class MainApp extends StatefulWidget {
//   final ProfileData profileData;
//   const MainApp({super.key, required this.profileData});

//   @override
//   State<MainApp> createState() => _MainApp();
// }

// class _MainApp extends State<MainApp> {
//   void changingApp(){
//     setState(() {
//       isChange = !isChange;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Ex3(profileData: widget.profileData),
//     );
//   }
// }


// Exercise 4
void main() => runApp(
  DevicePreview(builder: (context) => MainApp(), enabled: !kReleaseMode,)
);


class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TemperatureApp(),
    );
  }
}