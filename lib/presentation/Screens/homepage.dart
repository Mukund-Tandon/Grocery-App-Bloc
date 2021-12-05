import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_prac/presentation/Screens/drawer_screen.dart';
import 'package:ui_prac/presentation/Screens/home_scrreen.dart';
import 'dart:ffi';
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Stack(
          children: [
            drawer_screen(),
            home_screen(),

          ],
        ),
      ),
    );
  }
}
