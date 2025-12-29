import 'package:flutter/material.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/departments/presentation/widgets/departments_item.dart';

class DepartmentsBody extends StatelessWidget {
  const DepartmentsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.responsive(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'All Departments',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24.responsive(context),
            ),
          ),
          SizedBox(height: 16.responsive(context)),

          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 12.responsive(context)),
                  child: DepartementItem(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
