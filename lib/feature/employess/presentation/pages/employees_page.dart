import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/employess/presentation/pages/new_employee_page1.dart';
import 'package:hr/feature/employess/presentation/widgets/employees_page_body.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton.small(
          backgroundColor: AppColor.bgBandPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(56.responsive(context)),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    NewEmployeePage(), // Replace with your destination page
              ),
            );
          },
          child: PhosphorIcon(
            PhosphorIcons.plus(),
            color: AppColor.contentPrimaryInverted,
            size: 18.responsive(context),
          ),
        ),
        body: EmployeesPageBody(),
      ),
    );
  }
}
