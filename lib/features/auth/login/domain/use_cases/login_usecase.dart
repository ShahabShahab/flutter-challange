import 'package:online_selling_interview_question/features/auth/login/domain/entities/login_request.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/entities/login_response.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/repositories/login_repository.dart';

class LoginUseCase {
  final LoginRepository loginRepository;

  LoginUseCase({required this.loginRepository});

  Future<LoginResponse> login(String username, String password) async {
    return Future.delayed(const Duration(seconds: 3), () {
      return loginRepository
          .login(LoginRequest(username: username, password: password));
    });
  }
}
