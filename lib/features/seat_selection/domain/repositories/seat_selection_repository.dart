import 'package:online_selling_interview_question/features/seat_selection/domain/entities/seats_status_response.dart';

abstract class SeatSelectionRepository {
  Future<SeatsStatusResponse> getSeatsStatus(String stadiumId);
}
