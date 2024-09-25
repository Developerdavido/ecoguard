import 'package:ecoguard_project/core/common/extensions/context_extensions.dart';
import 'package:ecoguard_project/core/common/widgets/ecoguard_logo.dart';
import 'package:ecoguard_project/core/res/colors.dart';
import 'package:ecoguard_project/src/authentication/views/sections/sign_in_form.dart';
import 'package:ecoguard_project/src/authentication/views/sign_up_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/common/widgets/default_text.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  static const path = '/signIn';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.theme.scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Gap(context.height * 0.1),
                    const EcoguardLogo(baseColor: AppColors.primaryColor,),
                    const Gap(40),
                    const DefaultText(
                      'Log In',
                      fontSize: 18,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                     // fontFamily: 'Mulish',
                    ),
                    const Gap(40),
                    SignInForm(
                      formKey: _formKey,
                      emailCtrl: _emailController,
                      passwordCtrl: _passwordController,
                    ),
                    const Gap(20),
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: TextButton(
                    //     onPressed: () {},
                    //     child: const DefaultText(
                    //       'Forgot Password?',
                    //       fontSize: 13,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.onPrimaryColor
                ),
                onPressed: () {
                  //TODO: move on to the home page
                  // if (_formKey.currentState!.validate()) {
                  //   Navigator.of(context).pushReplacementNamed(TripOverviewPage.path);
                  // }
                },
                child: const DefaultText("Log In", fontWeight: FontWeight.w500, color: AppColors.onPrimaryColor,),
              ),
              const Gap(27),
              RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: const TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).pushReplacementNamed(
                            SignUpPage.path,
                          );
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
