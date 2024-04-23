import 'package:online_selling_interview_question/features/home/domain/entities/stadiums_response.dart';

abstract class HomeRepository {
  Future<StadiumsResponse> getStadiums();
}
