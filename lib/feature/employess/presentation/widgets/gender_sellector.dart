import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';

class GenderSellector extends StatelessWidget {
  const GenderSellector({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final String? value;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: value,
      icon: const Icon(Icons.keyboard_arrow_down),
      items: const [
        DropdownMenuItem(value: 'male', child: Text("ذكر")),
        DropdownMenuItem(value: 'female', child: Text("أنثى")),
      ],
      onChanged: onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'gender is required';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Gender",
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.responsive(context),
          vertical: 14.responsive(context),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.responsive(context)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.responsive(context)),
          borderSide: const BorderSide(color: Color(0xffACACAC)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.responsive(context)),
          borderSide: BorderSide(color: AppColor.contentBrandPrimary),
        ),
      ),
    );
  }
}
