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
}
