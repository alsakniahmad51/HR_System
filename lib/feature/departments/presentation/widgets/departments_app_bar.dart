import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hr/core/constants/app_assets.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';

class DepartmentsAppBar extends StatelessWidget {
  const DepartmentsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.responsive(context)),
          child: Row(
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
        ),
        SizedBox(height: 14.responsive(context)),
        Divider(height: 1, color: AppColor.borderTransparent, thickness: 1),
      ],
    );
  }
}
