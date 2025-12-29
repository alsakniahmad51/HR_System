import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/core/widgets/custom_text_feild.dart';

class LabeledTextField extends StatelessWidget {
  const LabeledTextField({
    super.key,
    required this.label,
    this.isRequired = false,
    this.obscureText = false,
    this.suffixIcon,
  });

  final String label;
  final bool isRequired;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13.responsive(context),
              ),
            ),
            if (isRequired) ...[
              SizedBox(width: 4.responsive(context)),
              Text(
                '(Required)',
                style: TextStyle(
                  color: AppColor.contentCritical,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.responsive(context),
                ),
              ),
            ],
          ],
        ),
        SizedBox(height: 8.responsive(context)),
        CustomTextFeild(
          hintText: '',
          obscureText: obscureText,
          suffixIcon: suffixIcon,
        ),
      ],
    );
  }
}
