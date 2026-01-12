import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/features/auth/screens/email_login.dart';
import 'package:shoflex/widgets/custom_button.dart';
import 'package:shoflex/widgets/custom_textform_field.dart';

class ForgotPassword extends StatefulWidget {
  static const String routeName = "/forgot-password";
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              //back icon
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.fillColor,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/backarrow.svg",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Text(
                "Forgot Password",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              ),

              SizedBox(
                height: 30,
              ),

              CustomTextformField(
                inputText: "Enter Email address",
                controller: emailController,
              ),

              SizedBox(
                height: 20,
              ),
              CustomButton(
                buttonName: "Continue",
                onTap: () async {
                  Navigator.pushNamedAndRemoveUntil(
                      context, (EmailLogin.routeName), (route) => false);
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
