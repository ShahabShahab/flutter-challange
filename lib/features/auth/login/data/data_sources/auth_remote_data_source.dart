import 'package:online_selling_interview_question/features/auth/login/domain/entities/login_request.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/entities/login_response.dart';

class AuthRemoteDataSource {
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    return Future.delayed(const Duration(seconds: 3), () {
      return Future.value(LoginResponse.mock());
    });
  }
}
