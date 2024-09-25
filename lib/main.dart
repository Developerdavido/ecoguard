import 'package:ecoguard_project/core/common/routes/route.dart';
import 'package:ecoguard_project/core/res/colors.dart';
import 'package:ecoguard_project/core/utils/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  CacheHelper.instance.init(prefs);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.onPrimaryColor,
        useMaterial3: true,
      ),
      routes: Routes.routes,
    );
  }
}

