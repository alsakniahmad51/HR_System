import 'package:hr/feature/employess/data/entity/emp_entity.dart';

abstract class EmployeesState {}

class EmployeesLoading extends EmployeesState {}

class EmployeesLoaded extends EmployeesState {
  final List<Employee> employees;
  EmployeesLoaded(this.employees);
}
