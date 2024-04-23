import 'package:online_selling_interview_question/features/home/domain/entities/stadiums_response.dart';
import 'package:online_selling_interview_question/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<StadiumsResponse> getStadiums() {
    return Future.value(StadiumsResponse.mock());
  }
}
