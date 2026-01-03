import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/departments/presentation/widgets/departments_app_bar.dart';
import 'package:hr/feature/employess/presentation/manager/employees_cubit.dart';
import 'package:hr/feature/employess/presentation/manager/employees_state.dart';
import 'package:hr/feature/employess/presentation/pages/employee_info_page.dart';
import 'package:hr/feature/employess/presentation/widgets/employee_card.dart';
import 'package:hr/feature/employess/presentation/widgets/no_employee.dart';

class EmployeesPageBody extends StatelessWidget {
  const EmployeesPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.responsive(context)),
        child: Column(
          children: [
            DepartmentsAppBar(),
            SizedBox(height: 16.responsive(context)),

            Expanded(
              child: BlocBuilder<EmployeesCubit, EmployeesState>(
                builder: (context, state) {
                  if (state is EmployeesLoading) {
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

                  if (state is EmployeesLoaded) {
                    if (state.employees.isEmpty) {
                      return const NoEmployee();
                    }

                    return SingleChildScrollView(
                      child: Wrap(
                        spacing: 12.responsive(context),
                        runSpacing: 12.responsive(context),
                        children: state.employees
                            .map(
                              (e) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          EmployeeInfoPage(employee: e),
                                    ),
                                  );
                                },
                                child: EmployeeCard(employee: e),
                              ),
                            )
                            .toList(),
                      ),
                    );
                  }

                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
