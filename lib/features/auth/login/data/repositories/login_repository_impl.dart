

import 'package:flutter/foundation.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/entities/login_request.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/entities/login_response.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository{
  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    return Future.value(LoginResponse.mock());
  }

}