import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hr/core/constants/app_assets.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/auth/presentation/pages/login_page.dart';

class DepartmentsAppBar extends StatelessWidget {
  const DepartmentsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.responsive(context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Logo + Title
              Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.logo,
                    width: 32.responsive(context),
                    height: 32.responsive(context),
                  ),
                  SizedBox(width: 8.responsive(context)),
                  Text(
                    'Management System',
                    style: TextStyle(
                      fontSize: 20.responsive(context),
                      fontWeight: FontWeight.w500,
                      color: AppColor.contentBrandSecondary,
                    ),
                  ),
                ],
              ),

              /// Logout Icon
              IconButton(
                icon: Icon(
                  Icons.logout,
                  size: 22.responsive(context),
                  color: AppColor.contentSecondary,
                ),
                onPressed: () {
                  _logout(context);
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 14.responsive(context)),
        Divider(height: 1, color: AppColor.borderTransparent, thickness: 1),
      ],
    );
  }

  void _logout(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => LoginPage()),
      (route) => false,
    );
  }
}
