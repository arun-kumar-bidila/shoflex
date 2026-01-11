import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/features/auth/screens/forgot_password.dart';
import 'package:shoflex/widgets/custom_button.dart';
import 'package:shoflex/widgets/custom_textform_field.dart';

class PasswordLogin extends StatefulWidget {
  static const String routeName = "/password-login";
  const PasswordLogin({super.key});

  @override
  State<PasswordLogin> createState() => _PasswordLoginState();
}

class _PasswordLoginState extends State<PasswordLogin> {
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.background,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, right: 25, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Sign in",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextformField(
                inputText: "Password",
                controller: passwordController,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                buttonName: "Continue",
                onTap: () async {},
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    text: "Forgot Password ? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    children: [
                      TextSpan(
                          text: "Reset",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, ForgotPassword.routeName);
                            }),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
