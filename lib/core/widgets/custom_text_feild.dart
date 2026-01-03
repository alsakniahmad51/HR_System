import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.validator,
  });

  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20.responsive(context),
      ),
      cursorColor: AppColor.contentBrandPrimary,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16.responsive(context),
          color: const Color(0xffACACAC),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.responsive(context),
          vertical: 14.responsive(context),
        ),
        isDense: true,
        border: _buildOutlineInputBorder(context),
        enabledBorder: _buildOutlineInputBorder(context),
        focusedBorder: _buildOutlineInputBorder(
          context,
          color: AppColor.contentBrandPrimary,
        ),
        errorBorder: _buildOutlineInputBorder(
          context,
          color: AppColor.contentCritical,
        ),
        focusedErrorBorder: _buildOutlineInputBorder(
          context,
          color: AppColor.contentCritical,
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder(
    BuildContext context, {
    Color? color,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.responsive(context)),
      borderSide: BorderSide(color: color ?? const Color(0xffACACAC)),
    );
  }
}
