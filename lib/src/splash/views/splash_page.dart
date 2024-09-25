import 'dart:async';

import 'package:ecoguard_project/core/res/colors.dart';
import 'package:ecoguard_project/src/splash/views/splash_screen_widgets/center_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../authentication/views/sign_in_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const path = "/";
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  @override
  void initState() {
    _timer = Timer(const Duration(seconds: 2), _moveToNextPage);
    super.initState();
  }

  _moveToNextPage() {
    Navigator.pushReplacementNamed(context, SignInPage.path);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: const CenterLogo().animate().fadeIn().scaleXY(
          delay: 300.ms, curve: Curves.easeInCubic, begin: 0.5, end: 1),
    );
  }
}
