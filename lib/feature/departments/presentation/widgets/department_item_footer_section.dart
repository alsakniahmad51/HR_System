import 'package:flutter/material.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/core/widgets/custom_button.dart';
import 'package:hr/feature/departments/domain/model/departments_model.dart';
import 'package:hr/feature/departments/presentation/functions/add_new_job_title_dialog.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DepartmentsItemFooterSection extends StatelessWidget {
  const DepartmentsItemFooterSection({
    super.key,
    required this.departmentsModel,
  });
  final DepartmentsModel departmentsModel;
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
              addNewJobTitleDialog(context, departmentsModel);
            },
          ),
        ),
      ],
    );
  }
}
