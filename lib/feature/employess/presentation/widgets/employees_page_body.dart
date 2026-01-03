import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/departments/presentation/widgets/departments_app_bar.dart';
import 'package:hr/feature/employess/data/entity/emp_entity.dart';
import 'package:hr/feature/employess/presentation/manager/employees_cubit.dart';
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

            BlocBuilder<EmployeesCubit, List<Employee>>(
              builder: (context, employees) {
                if (employees.isEmpty) {
                  return const Expanded(child: NoEmployee());
                }

                return Expanded(
                  child: SingleChildScrollView(
                    child: Wrap(
                      spacing: 12.responsive(context),
                      runSpacing: 12.responsive(context),
                      children: employees
                          .map((e) => EmployeeCard(employee: e))
                          .toList(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
