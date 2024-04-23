import 'package:online_selling_interview_question/features/seat_selection/domain/entities/seats_status_response.dart';
import 'package:online_selling_interview_question/features/seat_selection/domain/repositories/seat_selection_repository.dart';

class SeatSelectionRepositoryImpl implements SeatSelectionRepository {
  @override
  Future<SeatsStatusResponse> getSeatsStatus(String stadiumId) {
    return Future.value(SeatsStatusResponse.mock());
  }
}
