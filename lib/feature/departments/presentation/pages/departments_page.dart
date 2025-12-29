import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/departments/presentation/widgets/departments_app_bar.dart';
import 'package:hr/feature/departments/presentation/widgets/departments_body.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DepartmentsPage extends StatelessWidget {
  const DepartmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.small(
          backgroundColor: AppColor.bgBandPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(56.responsive(context)),
          ),
          onPressed: () {},
          child: PhosphorIcon(
            PhosphorIcons.plus(),
            color: AppColor.contentPrimaryInverted,
            size: 18.responsive(context),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 14.responsive(context)),
          child: Column(
            children: [
              DepartmentsAppBar(),
              // Expanded(child: DepartmentsEmptyBody()),
              SizedBox(height: 16.responsive(context)),
              Expanded(child: DepartmentsBody()),
            ],
          ),
        ),
      ),
    );
  }
}
