import 'package:flutter/material.dart';
import 'package:hr/core/constants/app_color.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/auth/presentation/widgets/labeled_text_field.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    required this.controller,
    required this.validator,
  });

  final TextEditingController controller;
  final String? Function(String?) validator;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      controller: widget.controller,
      label: 'Password',
      isRequired: true,
      obscureText: _isHidden,
      validator: widget.validator,
      suffixIcon: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: () {
            setState(() {
              _isHidden = !_isHidden;
            });
          },
          child: Padding(
            padding: EdgeInsets.all(8.responsive(context)),
            child: PhosphorIcon(
              _isHidden ? PhosphorIcons.eye() : PhosphorIcons.eyeSlash(),
              size: 20.responsive(context),
              color: AppColor.contentPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
