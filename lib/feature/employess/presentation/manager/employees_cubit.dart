import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/feature/employess/data/entity/emp_entity.dart';

class EmployeesCubit extends Cubit<List<Employee>> {
  EmployeesCubit() : super([]);

  void addEmployee(Employee employee) {
    emit([...state, employee]);
  }
}
