import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/core/widgets/custom_text_feild.dart';
import 'package:hr/feature/employess/data/entity/emp_entity.dart';
import 'package:hr/feature/employess/presentation/manager/employees_cubit.dart';
import 'package:hr/feature/employess/presentation/pages/employees_page.dart';
import 'package:hr/feature/employess/presentation/widgets/label_text.dart';
import 'package:hr/main.dart';

class NewEmployeePage2Body extends StatefulWidget {
  const NewEmployeePage2Body({super.key, required this.employee});
  final Employee employee;
  @override
  State<NewEmployeePage2Body> createState() => _NewEmployeePage2BodyState();
}

class _NewEmployeePage2BodyState extends State<NewEmployeePage2Body> {
  final _formKey = GlobalKey<FormState>();
  final departmentController = TextEditingController();
  final jobTitleController = TextEditingController();
  final statusController = TextEditingController();
  final contractTypeController = TextEditingController();
  final appointmentDateController = TextEditingController();
  final salaryController = TextEditingController();
  String get id => widget.employee.id;
  String get name => widget.employee.name;
  String get email => widget.employee.email;
  String get phone => widget.employee.phoneNumber;
  String get birth => widget.employee.dateOfBirth;
  String get gender => widget.employee.gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Add New Employee"),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.responsive(context),
          vertical: 16.responsive(context),
        ),
        child: SizedBox(
          height: 40,
          child: Row(
            children: [
              Text(
                "Step 2 / 2",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final employee = Employee(
                      id: id,
                      name: name,
                      email: email,
                      phoneNumber: phone,
                      dateOfBirth: birth,
                      gender: gender,
                      department: departmentController.text,
                      jobTitle: jobTitleController.text,
                      status: statusController.text,

                      appointmentDate: appointmentDateController.text,
                      salary: double.parse(salaryController.text),
                      comtractType: contractTypeController.text,
                      appointment: appointmentDateController.text,
                    );

                    context.read<EmployeesCubit>().addEmployee(employee);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainNavigationBar(),
                      ),
                    );
                  }
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.bgBandPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 8,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Confirm",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    LabelText(label: 'Department'),
                    CustomTextFeild(
                      hintText: "Department",
                      controller: departmentController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Department is required';
                        }
                        return null;
                      },
                    ),
                    LabelText(label: 'Job Title'),
                    CustomTextFeild(
                      hintText: "Job Title",
                      controller: jobTitleController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Job Title is required';
                        }
                        return null;
                      },
                    ),
                    Row(
                      children: [
                        SizedBox(
                          // height: 68,
                          width: 170.responsive(context),
                          child: Column(
                            children: [
                              LabelText(label: 'Status'),
                              CustomTextFeild(
                                hintText: "Emp Status",
                                controller: statusController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Status is required';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          // height: 68,
                          width: 170.responsive(context),
                          child: Column(
                            children: [
                              LabelText(label: 'Contract type'),
                              CustomTextFeild(
                                hintText: "Contract type",
                                controller: contractTypeController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Contract is required';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    LabelText(label: "Date of appointment"),
                    CustomTextFeild(
                      hintText: "dd/mm/yyyy",

                      controller: appointmentDateController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Date of appointment is required';
                        }
                        return null;
                      },
                      prefixIcon: Icon(Icons.calendar_month_outlined),
                    ),
                    LabelText(label: "salary"),
                    CustomTextFeild(
                      hintText: "salary",

                      controller: salaryController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'salary is required';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
