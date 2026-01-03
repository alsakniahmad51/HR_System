import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/core/widgets/custom_button.dart';
import 'package:hr/core/widgets/custom_text_feild.dart';
import 'package:hr/feature/departments/presentation/manager/department_cubit.dart';

Future<dynamic> addNewDepartmentDialog(BuildContext context) {
  final nameController = TextEditingController();
  final managerController = TextEditingController();

  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xffE0E0E0)),
          borderRadius: BorderRadiusGeometry.circular(16.responsive(context)),
        ),
        backgroundColor: Colors.white,
        titlePadding: EdgeInsets.all(24.responsive(context)),
        contentPadding: EdgeInsets.only(
          left: 20.responsive(context),
          right: 20.responsive(context),
          bottom: 24.responsive(context),
        ),
        iconPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.symmetric(horizontal: 20.responsive(context)),
        buttonPadding: EdgeInsets.zero,
        actionsPadding: EdgeInsets.zero,
        title: Text(
          'Add New Department',
          style: TextStyle(
            fontSize: 20.responsive(context),
            fontWeight: FontWeight.w500,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Department name',
              style: TextStyle(
                fontSize: 13.responsive(context),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8.responsive(context)),
            CustomTextFeild(
              hintText: 'Department name',
              controller: nameController,
            ),
            SizedBox(height: 16.responsive(context)),
            Text(
              'Department Manager',
              style: TextStyle(
                fontSize: 13.responsive(context),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8.responsive(context)),
            CustomTextFeild(
              hintText: 'Department Manager',
              controller: managerController,
            ),
            SizedBox(height: 16.responsive(context)),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: CustomButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    padding: EdgeInsets.symmetric(
                      vertical: 8.responsive(context),
                    ),
                    color: Colors.transparent,
                    borderColor: Color(0xff3C4C5C),
                    borderRadius: 8.responsive(context),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.responsive(context),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.responsive(context)),
                Expanded(
                  child: CustomButton(
                    onPressed: () async {
                      if (nameController.text.isEmpty ||
                          managerController.text.isEmpty) {
                        return; // منع الإضافة إذا الحقول فاضية
                      }

                      // فتح Loading Dialog
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) => Center(
                          child: CircularProgressIndicator(
                            color: AppColor.contentBrandPrimary,
                          ),
                        ),
                      );

                      // إضافة القسم عبر Cubit
                      BlocProvider.of<DepartmentCubit>(context).addDepartment(
                        departmentName: nameController.text,
                        departmentManagerName: managerController.text,
                      );

                      await Future.delayed(const Duration(seconds: 1));

                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    },
                    padding: EdgeInsets.symmetric(
                      vertical: 8.responsive(context),
                    ),
                    color: AppColor.contentBrandPrimary,
                    borderRadius: 8.responsive(context),
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 16.responsive(context),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
