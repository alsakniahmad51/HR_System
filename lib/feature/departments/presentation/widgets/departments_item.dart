import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/departments/presentation/widgets/custom_expansion_list_tile.dart';
import 'package:hr/feature/departments/presentation/widgets/department_info.dart';
import 'package:hr/feature/departments/presentation/widgets/department_item_footer_section.dart';
import 'package:hr/feature/departments/presentation/widgets/department_item_job_title_section.dart';
import 'package:hr/feature/departments/presentation/widgets/department_manager_info_row.dart';

class DepartementItem extends StatelessWidget {
  const DepartementItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      title: Text(
        'Developers',
        style: TextStyle(
          fontSize: 16.responsive(context),
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: DepartmetInfo(jobsCount: 5, usersCount: 10),
      children: [
        SizedBox(height: 12.responsive(context)),
        Divider(height: 1, color: AppColor.borderTransparent, thickness: 1),
        SizedBox(height: 12.responsive(context)),
        DepartmentManagerInfoRow(),
        Text(
          'Job titles',
          style: TextStyle(
            fontSize: 12.responsive(context),
            fontWeight: FontWeight.w500,
            color: AppColor.contentSecondary,
          ),
        ),
        SizedBox(height: 8.responsive(context)),

        DepartmentsItemJobTitleSection(),
        SizedBox(height: 12.responsive(context)),
        DepartmentsItemFooterSection(),
      ],
    );
  }
}
