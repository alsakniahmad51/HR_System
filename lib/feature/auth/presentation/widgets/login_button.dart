import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/core/widgets/custom_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.responsive(context)),
      color: AppColor.contentBrandPrimary,
      onPressed: onPressed,
      child: Text(
        'Log in',
        style: TextStyle(color: Colors.white, fontSize: 16.responsive(context)),
      ),
    );
  }
}
