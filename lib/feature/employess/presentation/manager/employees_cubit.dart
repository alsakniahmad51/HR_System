import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/feature/employess/data/entity/emp_entity.dart';
import 'package:hr/feature/employess/presentation/manager/employees_state.dart';

class EmployeesCubit extends Cubit<EmployeesState> {
  EmployeesCubit() : super(EmployeesLoading()) {
    _loadEmployees();
  }

  void _loadEmployees() async {
    await Future.delayed(const Duration(seconds: 3));
    emit(EmployeesLoaded([]));
  }

  void addEmployee(Employee employee) {
    if (state is EmployeesLoaded) {
      final current = (state as EmployeesLoaded).employees;
      emit(EmployeesLoaded([...current, employee]));
    }
  }
}
