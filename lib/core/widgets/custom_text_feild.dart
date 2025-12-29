import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.suffixIcon,
  });

  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20.responsive(context),
      ),
      cursorColor: AppColor.contentBrandPrimary,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hint: Text(
          hintText,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20.responsive(context),
            color: const Color(0xffACACAC),
          ),
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
