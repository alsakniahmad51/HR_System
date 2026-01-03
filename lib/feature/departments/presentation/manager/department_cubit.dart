import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/feature/departments/data/departments.dart';
import 'package:hr/feature/departments/domain/model/departments_model.dart';
import 'package:hr/feature/departments/presentation/manager/department_state.dart';

class DepartmentCubit extends Cubit<DepartmentState> {
  DepartmentCubit() : super(DepartmentInitialState());

  final List<DepartmentsModel> _departments = departments;

  void getAllDepartments() {
    emit(DepartmentLoadingState());
    Future.delayed(const Duration(seconds: 2), () {
      emit(DepartmentSuccessState(departments: List.from(_departments)));
    });
  }

  void addJobTitle({required String departmentId, required String jobTitle}) {
    final index = _departments.indexWhere((d) => d.id == departmentId);

    if (index == -1) return;

    final updatedJobTitles = List<String>.from(_departments[index].jobTitles)
      ..add(jobTitle);

    final updatedDepartment = _departments[index].copyWith(
      jobTitles: updatedJobTitles,
      jobTitleCount: updatedJobTitles.length,
    );

    _departments[index] = updatedDepartment;

    Future.delayed(Duration(milliseconds: 1100), () {
      emit(DepartmentSuccessState(departments: List.from(_departments)));
    });
  }

  void addDepartment({
    required String departmentName,
    required String departmentManagerName,
  }) {
    final newId = (_departments.length + 1).toString();

    final newDepartment = DepartmentsModel(
      id: newId,
      departmentName: departmentName,
      jobTitleCount: 0,
      employeesCount: 0,
      jobTitles: [],
      departmentManagerName: departmentManagerName,
    );

    _departments.add(newDepartment);

    Future.delayed(Duration(milliseconds: 1100), () {
      emit(DepartmentSuccessState(departments: List.from(_departments)));
    });
  }
}
