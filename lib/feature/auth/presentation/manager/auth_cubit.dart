import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/feature/auth/domain/models/auth_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final List<String> allowedEmails = const [
    'sama@gmail.com',
    'belal@gmail.com',
    'ahmad@gmail.com',
  ];

  Future<void> login({required String email, required String password}) async {
    emit(AuthLoading());

    await Future.delayed(const Duration(seconds: 2));

    if (!allowedEmails.contains(email)) {
      emit(AuthError('Email is incorrect'));
      return;
    }

    if (password != '12345678') {
      emit(AuthError('Password is incorrect'));
      return;
    }

    final user = AuthModel(email: email);

    await _saveUser(user);

    emit(AuthSuccess(user));
  }

  Future<void> _saveUser(AuthModel user) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('user', jsonEncode(user.toJson()));
    await prefs.setBool('isLoggedIn', true);
  }

  Future<AuthModel?> getSavedUser() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString('user');

    if (data == null) return null;

    return AuthModel.fromJson(jsonDecode(data));
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    emit(AuthInitial());
  }
}
