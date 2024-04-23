import 'package:get_it/get_it.dart';
import 'package:online_selling_interview_question/features/auth/login/data/repositories/login_repository_impl.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/repositories/login_repository.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/use_cases/login_usecase.dart';
import 'package:online_selling_interview_question/features/auth/login/presentation/manager/login_provider.dart';

final container = GetIt.instance;

Future<void> initContainer() async {
  container.registerFactory<LoginProvider>(
      () => LoginProvider(loginUseCase: container<LoginUseCase>()));
  container.registerFactory<LoginUseCase>(
      () => LoginUseCase(loginRepository: container<LoginRepository>()));
  container.registerFactory<LoginRepository>(() => LoginRepositoryImpl());
}
