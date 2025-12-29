import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_assets.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Image.asset(
      AppAssets.login,
      height: screenHeight / 2,

      fit: BoxFit.fill,
    );
  }
}
