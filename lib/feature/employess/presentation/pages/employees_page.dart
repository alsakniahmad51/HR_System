import 'package:flutter/material.dart';
import 'package:hr/feature/employess/presentation/widgets/employees_page_body.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: EmployeesPageBody()));
  }
}
