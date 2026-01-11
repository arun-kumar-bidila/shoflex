import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/features/auth/screens/forgot_password.dart';
import 'package:shoflex/features/auth/widgets/category_button.dart';
import 'package:shoflex/features/auth/widgets/category_selection.dart';
import 'package:shoflex/widgets/custom_button.dart';
import 'package:shoflex/widgets/custom_textform_field.dart';

class CreateAccount extends StatefulWidget {
  static const String routeName = "/create-account";
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
                "Create Account",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              ),

              SizedBox(
                height: 30,
              ),

              CustomTextformField(
                inputText: "Firstname",
                controller: nameController,
              ),

              SizedBox(
                height: 10,
              ),
              CustomTextformField(
                inputText: "Lastname",
                controller: emailController,
              ),

              SizedBox(
                height: 10,
              ),
              CustomTextformField(
                inputText: "Email Address",
                controller: passwordController,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextformField(
                inputText: "Password",
                controller: passwordController,
                // isPassword: true,
              ),

              SizedBox(
                height: 20,
              ),
              CategorySelection(),
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
              ),
            ],
          ),
        ),
      )),
    );
  }
}
