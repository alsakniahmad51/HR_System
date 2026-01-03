import 'package:flutter/material.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/employess/data/entity/emp_entity.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class EmployeeInfoPageBody extends StatelessWidget {
  const EmployeeInfoPageBody({super.key, required this.employee});
  final Employee employee;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Employee Info",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            SizedBox(height: 20),
            Row(
              children: [
                Image.asset(
                  fit: BoxFit.cover,
                  'assets/images/bigperson.png',
                  height: 80,
                  width: 80,
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      employee.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: 86.responsive(context),
                      height: 26.responsive(context),
                      decoration: BoxDecoration(
                        color: Color(0xffF0FDF4),
                        borderRadius: BorderRadius.circular(
                          4.responsive(context),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          employee.status,
                          style: TextStyle(
                            color: Color(0xff00C950),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24),
            Text(
              "Basic Information",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                PhosphorIcon(PhosphorIcons.at(), color: Colors.grey, size: 20),
                Text(
                  "  Email Address",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  employee.email,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              children: [
                PhosphorIcon(
                  PhosphorIcons.phone(),
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  "  Phone Number",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  employee.phoneNumber,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              children: [
                PhosphorIcon(
                  PhosphorIcons.user(),
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  "  Gendre",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  employee.gender,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                PhosphorIcon(
                  PhosphorIcons.calendarDots(),
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  "  Date of Birth",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  employee.email,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              "Job Information",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                PhosphorIcon(
                  PhosphorIcons.treeView(),
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  "  Department",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  employee.department,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                PhosphorIcon(
                  PhosphorIcons.readCvLogo(),
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  "  Job Title",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  employee.jobTitle,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                PhosphorIcon(
                  PhosphorIcons.signature(),
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  "  Contract Type",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  employee.comtractType,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                PhosphorIcon(
                  PhosphorIcons.calendarDots(),
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  "  Date of Appointment",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  employee.appointmentDate,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                PhosphorIcon(
                  PhosphorIcons.moneyWavy(),
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  "  salary",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  employee.salary.toString(),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
