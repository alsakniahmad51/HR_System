import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/departments/presentation/manager/department_cubit.dart';
import 'package:hr/feature/departments/presentation/widgets/departments_app_bar.dart';
import 'package:hr/feature/departments/presentation/widgets/departments_body.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DepartmentsPage extends StatefulWidget {
  const DepartmentsPage({super.key});

  @override
  State<DepartmentsPage> createState() => _DepartmentsPageState();
}

class _DepartmentsPageState extends State<DepartmentsPage> {
  @override
  void initState() {
    BlocProvider.of<DepartmentCubit>(context).getAllDepartments();
    super.initState();
  }

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

              SizedBox(height: 16.responsive(context)),
              Expanded(child: DepartmentsBody()),
            ],
          ),
        ),
      ),
    );
  }
}
