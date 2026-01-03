class DepartmentsModel {
  final String id;
  final String departmentName;
  final int jobTitleCount;
  final int employeesCount;
  final List<String> jobTitles;
  final String departmentManagerName;

  DepartmentsModel({
    required this.id,
    required this.departmentName,
    required this.jobTitleCount,
    required this.employeesCount,
    required this.jobTitles,
    required this.departmentManagerName,
  });

  DepartmentsModel copyWith({List<String>? jobTitles, int? jobTitleCount}) {
    return DepartmentsModel(
      id: id,
      departmentName: departmentName,
      jobTitleCount: jobTitleCount ?? this.jobTitleCount,
      employeesCount: employeesCount,
      jobTitles: jobTitles ?? this.jobTitles,
      departmentManagerName: departmentManagerName,
    );
  }
}
