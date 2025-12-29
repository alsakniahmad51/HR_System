import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DepartmetInfo extends StatelessWidget {
  const DepartmetInfo({
    super.key,
    required this.jobsCount,
    required this.usersCount,
  });
  final int jobsCount;
  final int usersCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PhosphorIcon(
          PhosphorIcons.readCvLogo(),
          size: 16.responsive(context),
          color: AppColor.contentSecondary,
        ),
        SizedBox(width: 4.responsive(context)),
        Text(
          '$jobsCount job titles',
          style: TextStyle(
            fontSize: 12.responsive(context),
            fontWeight: FontWeight.w500,
            color: AppColor.contentSecondary,
          ),
        ),
        SizedBox(width: 8.responsive(context)),
        PhosphorIcon(
          PhosphorIcons.users(),
          size: 16.responsive(context),
          color: AppColor.contentSecondary,
        ),
        SizedBox(width: 4.responsive(context)),
        Text(
          '$usersCount Employees',
          style: TextStyle(
            fontSize: 12.responsive(context),
            fontWeight: FontWeight.w500,
            color: AppColor.contentSecondary,
          ),
        ),
      ],
    );
  }
}
