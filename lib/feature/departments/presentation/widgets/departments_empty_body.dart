import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/core/widgets/custom_button.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DepartmentsEmptyBody extends StatelessWidget {
  const DepartmentsEmptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.responsive(context)),
      child: Column(
        children: [
          Spacer(),
          Text(
            'No Departments Yet',
            style: TextStyle(
              fontWeight: FontWeight.w500,

              fontSize: 20.responsive(context),
              color: AppColor.contentPrimary,
            ),
          ),
          SizedBox(height: 4.responsive(context)),
          Text(
            textAlign: TextAlign.center,
            'Start Managing Your Departments Now, so add them to the app now',
            style: TextStyle(
              fontWeight: FontWeight.w500,

              fontSize: 12.responsive(context),
              color: AppColor.contentSecondary,
            ),
          ),
          SizedBox(height: 12.responsive(context)),
          CustomButton(
            borderRadius: 8.responsive(context),
            color: AppColor.bgBandPrimary,
            padding: EdgeInsets.symmetric(
              vertical: 8.responsive(context),

              horizontal: 24.responsive(context),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PhosphorIcon(
                  PhosphorIcons.plus(),
                  size: 12.responsive(context),
                  color: AppColor.contentPrimaryInverted,
                ),
                SizedBox(width: 4.responsive(context)),
                Text(
                  'Add New Department',

                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.responsive(context),
                    color: AppColor.contentPrimaryInverted,
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
          Spacer(),
        ],
      ),
    );
  }
}
