import 'package:online_selling_interview_question/features/home/domain/entities/stadiums_response.dart';
import 'package:online_selling_interview_question/features/home/domain/repositories/home_repository.dart';

///The usecases are those pure and third-party independent business logic
///of our app. Currently, our usecases are pretty simple!
class HomeUseCase {
  final HomeRepository repository;

  HomeUseCase({required this.repository});

  Future<StadiumsResponse> getStadiums() async {
    return Future.delayed(const Duration(seconds: 3), () {
      return repository.getStadiums();
    });
  }
}
