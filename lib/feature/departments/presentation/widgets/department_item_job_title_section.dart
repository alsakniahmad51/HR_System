import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/core/widgets/custom_button.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DepartmentsItemJobTitleSection extends StatelessWidget {
  const DepartmentsItemJobTitleSection({super.key, required this.jobTitle});
  final List<String> jobTitle;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: jobTitle.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 5.06,
        crossAxisCount: 2,
        crossAxisSpacing: 16.responsive(context),
        mainAxisSpacing: 10.responsive(context),
      ),
      itemBuilder: (context, index) {
        return CustomButton(
          borderRadius: 6.responsive(context),
          padding: EdgeInsets.symmetric(horizontal: 8.responsive(context)),
          color: Color(0xffF2F7FB),
          borderColor: Color(0xffECF0F2),
          child: Row(
            children: [
              PhosphorIcon(
                PhosphorIcons.circle(PhosphorIconsStyle.fill),
                color: AppColor.contentBrandPrimary,
                size: 4.responsive(context),
              ),
              SizedBox(width: 4.responsive(context)),

              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    jobTitle[index],
                    style: TextStyle(
                      fontSize: 16.responsive(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
