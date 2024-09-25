import 'package:ecoguard_project/core/common/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key, required this.formKey, required this.emailCtrl, required this.passwordCtrl});

  final GlobalKey<FormState> formKey;
  final TextEditingController emailCtrl;
  final TextEditingController passwordCtrl;

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final ValueNotifier<bool> _obscureText = ValueNotifier(true);


  @override
  void dispose() {
    _obscureText.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InputField(controller: widget.emailCtrl,
            keyboardType: TextInputType.emailAddress,
            labelText: "Email",
            hintText: "Enter e-mail address",
          ),
           const Gap(40),
          ValueListenableBuilder<bool>(
              valueListenable: _obscureText,
              builder: (_, obscureText, __) {
                return InputField(
                    controller: widget.passwordCtrl,
                  keyboardType: TextInputType.visiblePassword,
                  labelText: "Password",
                  hintText: "Enter password",
                  obscureText: obscureText,
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off
                    ),
                    onPressed: (){
                      _obscureText.value = !obscureText;
                    },
                  ),
                );
              })
        ],
      ),
    );
  }
}
