import 'package:flutter/material.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/auth/presentation/widgets/labeled_text_field.dart';
import 'package:hr/feature/auth/presentation/widgets/login_button.dart';
import 'package:hr/feature/auth/presentation/widgets/login_header.dart';
import 'package:hr/feature/auth/presentation/widgets/login_title_section.dart';
import 'package:hr/feature/auth/presentation/widgets/password_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        body: CustomScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            /// 🔹 Header بدون Padding
            const SliverToBoxAdapter(child: LoginHeader()),

            /// 🔹 باقي الصفحة مع Padding
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.responsive(context)),
              sliver: SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LoginTitleSection(),
                    SizedBox(height: 24.responsive(context)),

                    const LabeledTextField(label: 'Email', isRequired: true),

                    SizedBox(height: 16.responsive(context)),

                    const PasswordTextField(),

                    const Spacer(),
                    SizedBox(height: 46.responsive(context)),
                    const LoginButton(),

                    SizedBox(height: 46.responsive(context)),
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
