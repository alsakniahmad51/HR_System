import 'package:hr/feature/departments/domain/model/departments_model.dart';

List<DepartmentsModel> departments = [
  DepartmentsModel(
    id: '1',
    departmentName: 'Human Resources',
    jobTitleCount: 3,
    employeesCount: 12,
    jobTitles: ['HR Manager', 'Recruiter', 'HR Assistant'],
    departmentManagerName: 'John Smith',
  ),
  DepartmentsModel(
    id: '2',
    departmentName: 'Information Technology',
    jobTitleCount: 4,
    employeesCount: 20,
    jobTitles: [
      'Flutter Developer',
      'Backend Developer',
      'UI/UX Designer',
      'QA Engineer',
    ],
    departmentManagerName: 'Michael Johnson',
  ),
  DepartmentsModel(
    id: '3',
    departmentName: 'Accounting',
    jobTitleCount: 2,
    employeesCount: 8,
    jobTitles: ['Accountant', 'Financial Analyst'],
    departmentManagerName: 'Sarah Williams',
  ),
  DepartmentsModel(
    id: '4',
    departmentName: 'Marketing',
    jobTitleCount: 3,
    employeesCount: 10,
    jobTitles: ['Marketing Manager', 'Content Creator', 'SEO Specialist'],
    departmentManagerName: 'David Brown',
  ),
  DepartmentsModel(
    id: '5',
    departmentName: 'Sales',
    jobTitleCount: 2,
    employeesCount: 15,
    jobTitles: ['Sales Manager', 'Sales Representative'],
    departmentManagerName: 'Emily Davis',
  ),
];
