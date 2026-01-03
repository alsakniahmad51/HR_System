import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/core/widgets/custom_text_feild.dart';
import 'package:hr/feature/employess/data/entity/emp_entity.dart';
import 'package:hr/feature/employess/presentation/pages/new_employee_page1.dart';
import 'package:hr/feature/employess/presentation/pages/new_employee_page2.dart';
import 'package:hr/feature/employess/presentation/widgets/gender_sellector.dart';
import 'package:hr/feature/employess/presentation/widgets/label_text.dart';

class NewEmployeePageBody extends StatefulWidget {
  const NewEmployeePageBody({super.key});

  @override
  State<NewEmployeePageBody> createState() => _NewEmployeePageBodyState();
}

class _NewEmployeePageBodyState extends State<NewEmployeePageBody> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final birthController = TextEditingController();
  String? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Step 1 / 2",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final emp = Employee(
                      id: '',
                      name: nameController.text,
                      email: emailController.text,
                      phoneNumber: phoneController.text,
                      dateOfBirth: birthController.text,
                      gender: selectedGender!,
                      appointmentDate: '',
                      salary: 0,
                      department: '',
                      jobTitle: '',
                      status: '',
                      comtractType: '',
                      appointment: '',
                    );
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => NewEmployeePage2(employee: emp),
                      ),
                    );
                    log(emp.toString());
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
                    "Next Step",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(title: Text("Add New Employee")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    LabelText(label: 'Name'),
                    CustomTextFeild(
                      hintText: "Employee Name",
                      controller: nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name is required';
                        }
                        return null;
                      },
                    ),
                    LabelText(label: "Email"),
                    CustomTextFeild(
                      hintText: "Employee Email",
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        return null;
                      },
                    ),
                    LabelText(label: 'Phone Number'),
                    CustomTextFeild(
                      hintText: "Employee Phone Number",
                      controller: phoneController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Phone number is required';
                        }
                        return null;
                      },
                      prefixIcon: SizedBox(
                        width: 24,
                        height: 24,
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/images/flag.svg",
                            width: 24,
                            height: 18,
                          ),
                        ),
                      ),
                    ),
                    LabelText(label: "Date of Birth"),
                    CustomTextFeild(
                      hintText: "dd/mm/yyyy",
                      controller: birthController,

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Date of birth is required';
                        }
                        return null;
                      },
                      prefixIcon: Icon(Icons.calendar_month_outlined),
                    ),
                    LabelText(label: "Gender"),
                    GenderSellector(
                      value: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
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
