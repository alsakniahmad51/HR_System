import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/departments/presentation/pages/departments_page.dart';
import 'package:hr/feature/employess/presentation/manager/employees_cubit.dart';
import 'package:hr/feature/employess/presentation/pages/employees_page.dart';
import 'package:hr/feature/my_account/presentation/pages/my_account_page.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

void main() {
  runApp(BlocProvider(create: (_) => EmployeesCubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainNavigationBar(),
    );
  }
}

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({super.key});

  @override
  State<MainNavigationBar> createState() => _MainNavigationBarState();
}

class _MainNavigationBarState extends State<MainNavigationBar> {
  int currentIndex = 0;
  List<Widget> pages = [DepartmentsPage(), EmployeesPage(), MyAccountPage()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (value) {
            if (value != currentIndex) {
              setState(() {
                currentIndex = value;
              });
            }
          },
          iconSize: 24.responsive(context),
          selectedLabelStyle: TextStyle(
            fontSize: 12.responsive(context),
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12.responsive(context),
            fontWeight: FontWeight.w500,
          ),
          selectedItemColor: AppColor.contentBrandPrimary,
          unselectedItemColor: AppColor.contentSecondary,
          items: [
            BottomNavigationBarItem(
              label: 'Departments',
              icon: PhosphorIcon(PhosphorIcons.treeView()),
            ),
            BottomNavigationBarItem(
              label: 'Employees',
              icon: PhosphorIcon(PhosphorIcons.users()),
            ),
            BottomNavigationBarItem(
              label: 'My Account',
              icon: PhosphorIcon(PhosphorIcons.user()),
            ),
          ],
        ),

        body: pages[currentIndex],
      ),
    );
  }
}
