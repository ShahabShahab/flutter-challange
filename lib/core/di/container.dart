import 'package:get_it/get_it.dart';
import 'package:online_selling_interview_question/features/auth/login/data/repositories/login_repository_impl.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/repositories/login_repository.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/use_cases/login_usecase.dart';
import 'package:online_selling_interview_question/features/auth/login/presentation/manager/login_provider.dart';
import 'package:online_selling_interview_question/features/home/data/repositories/home_repository_impl.dart';
import 'package:online_selling_interview_question/features/home/domain/repositories/home_repository.dart';
import 'package:online_selling_interview_question/features/home/domain/use_cases/home_usecase.dart';
import 'package:online_selling_interview_question/features/home/presentation/manager/home_provider.dart';
import 'package:online_selling_interview_question/features/seat_selection/data/repositories/seat_selection_repository_impl.dart';
import 'package:online_selling_interview_question/features/seat_selection/domain/repositories/seat_selection_repository.dart';
import 'package:online_selling_interview_question/features/seat_selection/domain/use_cases/seat_selection_usecase.dart';
import 'package:online_selling_interview_question/features/seat_selection/presentation/manager/seat_selection_provider.dart';

final container = GetIt.instance;

Future<void> initContainer() async {
  container.registerFactory<LoginProvider>(
      () => LoginProvider(loginUseCase: container<LoginUseCase>()));
  container.registerFactory<LoginUseCase>(
      () => LoginUseCase(loginRepository: container<LoginRepository>()));
  container.registerFactory<LoginRepository>(() => LoginRepositoryImpl());

  container.registerFactory<HomeProvider>(
      () => HomeProvider(useCase: container<HomeUseCase>()));
  container.registerFactory<HomeUseCase>(
      () => HomeUseCase(repository: container<HomeRepository>()));
  container.registerFactory<HomeRepository>(() => HomeRepositoryImpl());

  container.registerFactory<SeatSelectionProvider>(
          () => SeatSelectionProvider(useCase: container<SeatSelectionUseCase>()));
  container.registerFactory<SeatSelectionUseCase>(
          () => SeatSelectionUseCase(repository: container<SeatSelectionRepository>()));
  container.registerFactory<SeatSelectionRepository>(() => SeatSelectionRepositoryImpl());
}
