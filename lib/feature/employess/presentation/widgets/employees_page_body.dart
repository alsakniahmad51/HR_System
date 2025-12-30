import 'package:flutter/material.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/departments/presentation/widgets/departments_app_bar.dart';

class EmployeesPageBody extends StatelessWidget {
  const EmployeesPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.responsive(context)),
        child: Column(
          children: [
            DepartmentsAppBar(),
            SizedBox(height: 16.responsive(context)),
            Container(
              width: 372.responsive(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.responsive(context)),
                border: Border.all(color: Colors.grey.shade300, width: 1),
              ),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/person.png",
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 8.responsive(context)),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ahmed Ahmed",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "UX UI Product Designer",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
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
                              "Permanent",
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
                    // SizedBox(height: 8.responsive(context)),
                    Divider(color: Colors.grey.shade300),
                    Row(
                      children: [
                        Text(
                          "Department",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 106.responsive(context)),
                        Text(
                          "Start date of work",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.responsive(context)),
                    Row(
                      children: [
                        Text(
                          "Development Team",
                          style: TextStyle(
                            fontSize: 12,

                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 66.responsive(context)),
                        Text(
                          "15/05/2019",
                          style: TextStyle(
                            fontSize: 12,

                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
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
