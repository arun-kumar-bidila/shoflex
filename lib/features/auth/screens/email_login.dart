import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/features/auth/screens/create_account.dart';
import 'package:shoflex/features/auth/screens/password_login.dart';
import 'package:shoflex/features/auth/widgets/login_provider_button.dart';
import 'package:shoflex/widgets/custom_button.dart';
import 'package:shoflex/widgets/custom_textform_field.dart';

class EmailLogin extends StatefulWidget {
  static const String routeName = "/email-login";
  const EmailLogin({super.key});

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  TextEditingController emailController = TextEditingController();
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
                inputText: "Email address",
                controller: emailController,
              ),
              SizedBox(
                height: 15,
              ),
              CustomButton(
                buttonName: "Continue",
                onTap: () async {
                  Navigator.pushNamed(
                                  context, PasswordLogin.routeName);
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    text: "Dont have an Account ? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    children: [
                      TextSpan(
                          text: "Create One",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, CreateAccount.routeName);
                            }),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              LoginProviderButton(
                imagePath: "assets/apple.png",
                text: "Continue with Apple",
                onTap: () {},
              ),
              LoginProviderButton(
                imagePath: "assets/fb.png",
                text: "Continue with Facebook",
                onTap: () {},
              ),
              LoginProviderButton(
                imagePath: "assets/google.png",
                text: "Continue with Google",
                onTap: () {},
              ),

            ],
          ),
        ),
      )),
    );
  }
}
