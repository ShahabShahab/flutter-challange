import 'package:flutter/foundation.dart';
import 'package:online_selling_interview_question/features/auth/login/data/data_sources/auth_remote_data_source.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/entities/login_request.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/entities/login_response.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository {
  final AuthRemoteDataSource remoteDataSource;

  LoginRepositoryImpl({required this.remoteDataSource});

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    return await remoteDataSource.login(loginRequest);
  }
}
