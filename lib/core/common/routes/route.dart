

import 'package:ecoguard_project/src/authentication/views/sign_in_page.dart';
import 'package:ecoguard_project/src/authentication/views/sign_up_page.dart';
import 'package:ecoguard_project/src/splash/views/splash_page.dart';

abstract class Routes {

  static final routes = {
    SplashPage.path: (_) => const SplashPage(),
    SignUpPage.path: (_) => const SignUpPage(),
    SignInPage.path: (_) => const SignInPage(),
  };
}