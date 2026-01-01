import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/feature/departments/data/departments.dart';
import 'package:hr/feature/departments/presentation/manager/department_state.dart';

class DepartmentCubit extends Cubit<DepartmentState> {
  DepartmentCubit() : super(DepartmentInitialState());

  void getAllDepartments() {
    emit(DepartmentLoadingState());
    Future.delayed(Duration(seconds: 2), () {
      emit(DepartmentSuccessState(departments: departments));
    });
  }
}
