import 'package:hr/feature/departments/domain/model/departments_model.dart';

abstract class DepartmentState {}

class DepartmentInitialState extends DepartmentState {}

class DepartmentLoadingState extends DepartmentState {}

class DepartmentSuccessState extends DepartmentState {
  final List<DepartmentsModel> departments;

  DepartmentSuccessState({required this.departments});
}

class DepartmentFailState extends DepartmentState {
  final String errMessage;

  DepartmentFailState({required this.errMessage});
}
