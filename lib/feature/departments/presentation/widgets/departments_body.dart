import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/departments/presentation/manager/department_cubit.dart';
import 'package:hr/feature/departments/presentation/manager/department_state.dart';
import 'package:hr/feature/departments/presentation/widgets/departments_item.dart';

class DepartmentsBody extends StatelessWidget {
  const DepartmentsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DepartmentCubit, DepartmentState>(
      builder: (context, state) {
        if (state is DepartmentSuccessState) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.responsive(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'All Departments',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.responsive(context),
                  ),
                ),
                SizedBox(height: 16.responsive(context)),

                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: state.departments.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: 12.responsive(context),
                        ),
                        child: DepartementItem(
                          departmentsModel: state.departments[index],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: SizedBox(
              width: 44.responsive(context),
              height: 44.responsive(context),
              child: CircularProgressIndicator(
                color: AppColor.contentBrandPrimary,
              ),
            ),
          );
        }
      },
    );
  }
}
