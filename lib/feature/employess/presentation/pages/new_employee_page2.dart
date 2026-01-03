import 'package:flutter/material.dart';
import 'package:hr/feature/employess/data/entity/emp_entity.dart';
import 'package:hr/feature/employess/presentation/widgets/new_employee_page2_body.dart';

class NewEmployeePage2 extends StatelessWidget {
  const NewEmployeePage2({super.key, required this.employee});
  final Employee employee;
  @override
  Widget build(BuildContext context) {
    return NewEmployeePage2Body(employee: employee);
  }
}
