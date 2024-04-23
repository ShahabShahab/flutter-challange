import 'package:flutter/material.dart';
import 'package:online_selling_interview_question/core/base_provider.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/entities/login_response.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/use_cases/login_usecase.dart';

class LoginProvider extends BaseProvider {
  final LoginUseCase loginUseCase;

  LoginProvider({required this.loginUseCase});

  Future<LoginResponse> login(String username, String password) async {
    setState(ViewState.LOADING);
    return loginUseCase.login(username, password).then((response) {
      setState(ViewState.IDLE);
      return response;
    });
  }
}
