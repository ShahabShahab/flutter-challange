import 'package:online_selling_interview_question/features/auth/login/domain/entities/login_request.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/entities/login_response.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/repositories/login_repository.dart';

///The usecases are those pure and third-party independent business logic
///of our app. Currently, our usecases are pretty simple!
class LoginUseCase {
  final LoginRepository loginRepository;

  LoginUseCase({required this.loginRepository});

  Future<LoginResponse> login(String username, String password) async {
    return await loginRepository.login(LoginRequest(username: username, password: password));
  }
}
