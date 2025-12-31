import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/core/widgets/custom_button.dart';
import 'package:hr/feature/departments/presentation/functions/add_new_job_title_dialog.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DepartmentsItemFooterSection extends StatelessWidget {
  const DepartmentsItemFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            padding: EdgeInsets.symmetric(vertical: 8.responsive(context)),
            color: Colors.transparent,
            borderRadius: 8.responsive(context),
            borderColor: Color(0xff3C4C5C),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PhosphorIcon(
                  PhosphorIcons.plus(),

                  size: 16.responsive(context),
                ),
                SizedBox(width: 4.responsive(context)),
                Text(
                  'New job title',
                  style: TextStyle(
                    fontSize: 16.responsive(context),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            onPressed: () {
              addNewJobTitleDialog(context);
            },
          ),
        ),
        SizedBox(width: 12.responsive(context)),
        Expanded(
          child: CustomButton(
            padding: EdgeInsets.symmetric(vertical: 8.responsive(context)),
            color: AppColor.bgBandPrimary,
            borderRadius: 8.responsive(context),
            child: Text(
              'View Employees',
              style: TextStyle(
                fontSize: 16.responsive(context),
                fontWeight: FontWeight.w500,
                color: AppColor.contentPrimaryInverted,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
