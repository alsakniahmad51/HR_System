import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';

class LoginTitleSection extends StatelessWidget {
  const LoginTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Log In',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24.responsive(context),
            color: AppColor.contentBrandPrimary,
          ),
        ),
        SizedBox(height: 4.responsive(context)),
        Text(
          'Welcome Back',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16.responsive(context),
            color: AppColor.contentSecondary,
          ),
        ),
      ],
    );
  }
}
