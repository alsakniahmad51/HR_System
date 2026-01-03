import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/employess/presentation/pages/new_employee_page1.dart';

class NoEmployee extends StatelessWidget {
  const NoEmployee({super.key});

  get employeeCards => [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 122,
        width: 372,
        child: Column(
          children: [
            Text(
              "No Employees Yet",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 4),
            Text(
              "Start Managing Your Employees Now, so add them to the app now",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        NewEmployeePage(), // Replace with your destination page
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.bgBandPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              child: SizedBox(
                width: 181.responsive(context),
                child: Row(
                  children: [
                    Icon(Icons.add, size: 16, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      "Add New Employee",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
