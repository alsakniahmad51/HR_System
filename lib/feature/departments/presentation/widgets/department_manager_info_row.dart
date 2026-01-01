import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_assets.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';

class DepartmentManagerInfoRow extends StatelessWidget {
  const DepartmentManagerInfoRow({super.key, required this.managerName});
  final String managerName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Department Manager:',

          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12.responsive(context),
            color: AppColor.contentSecondary,
          ),
        ),
        // SizedBox(width: 8.responsive(context)),
        // ClipOval(
        //   child: Image.asset(
        //     AppAssets.userProfile,
        //     width: 16.responsive(context),
        //     height: 16.responsive(context),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        SizedBox(width: 4.responsive(context)),
        Text(
          managerName,

          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12.responsive(context),
            color: AppColor.contentBrandPrimary,
          ),
        ),
      ],
    );
  }
}
