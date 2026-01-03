import 'package:flutter/material.dart';
import 'package:hr/feature/employess/data/entity/emp_entity.dart';
import 'package:hr/feature/employess/presentation/widgets/employee_info_page_body.dart';

class EmployeeInfoPage extends StatelessWidget {
  const EmployeeInfoPage({super.key, required this.employee});
  final Employee employee;
  @override
  Widget build(BuildContext context) {
    return EmployeeInfoPageBody(employee: employee);
  }
}
