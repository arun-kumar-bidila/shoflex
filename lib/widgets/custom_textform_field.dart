import 'package:flutter/material.dart';
import 'package:shoflex/core/constants/app_colors.dart';

class CustomTextformField extends StatefulWidget {
  final String inputText;
  final bool isPassword;
  final TextEditingController controller;
  const CustomTextformField(
      {super.key,
      required this.inputText,
      required this.controller,
      this.isPassword = false});

  @override
  State<CustomTextformField> createState() => _CustomTextformFieldState();
}

class _CustomTextformFieldState extends State<CustomTextformField> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: Colors.black,
      obscureText: widget.isPassword ? isObscureText : false,
      style: const TextStyle(
          color: AppColors.textInput,
          fontWeight: FontWeight.w500,
          fontSize: 16),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.fillColor,
        hintText: widget.inputText,
        hintStyle: const TextStyle(
          color: AppColors.textPlaceholder,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
