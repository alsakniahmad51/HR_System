import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/core/extention/responsive_size.dart';
import 'package:hr/feature/auth/presentation/manager/auth_state.dart';
import 'package:hr/feature/auth/presentation/widgets/labeled_text_field.dart';
import 'package:hr/feature/auth/presentation/widgets/login_button.dart';
import 'package:hr/feature/auth/presentation/widgets/login_header.dart';
import 'package:hr/feature/auth/presentation/widgets/login_title_section.dart';
import 'package:hr/feature/auth/presentation/widgets/password_text_field.dart';
import 'package:hr/main.dart';

import '../manager/auth_cubit.dart' show AuthCubit;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final List<String> allowedEmails = const [
    'sama@gmail.com',
    'belal@gmail.com',
    'ahmad@gmail.com',
  ];

  void _onLogin(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<AuthCubit>().login(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthLoading) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => const Center(
              child: CircularProgressIndicator(color: Colors.blue),
            ),
          );
        }

        if (state is AuthError) {
          Navigator.pop(context);
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }

        if (state is AuthSuccess) {
          Navigator.pop(context);
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => MainNavigationBar()),
            (route) => false,
          );
        }
      },

      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: true,
          body: CustomScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              const SliverToBoxAdapter(child: LoginHeader()),
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.responsive(context),
                ),
                sliver: SliverFillRemaining(
                  hasScrollBody: false,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LoginTitleSection(),
                        SizedBox(height: 24.responsive(context)),

                        /// Email
                        LabeledTextField(
                          controller: emailController,
                          label: 'Email',
                          isRequired: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email is required';
                            }

                            final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                            if (!emailRegex.hasMatch(value)) {
                              return 'Invalid email format';
                            }

                            if (!allowedEmails.contains(value)) {
                              return 'Email is not allowed';
                            }

                            return null;
                          },
                        ),

                        SizedBox(height: 16.responsive(context)),

                        PasswordTextField(
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is required';
                            }

                            if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }

                            if (value != '12345678') {
                              return 'Incorrect password';
                            }

                            return null;
                          },
                        ),

                        SizedBox(height: 26.responsive(context)),

                        LoginButton(onPressed: () => _onLogin(context)),

                        SizedBox(height: 46.responsive(context)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
