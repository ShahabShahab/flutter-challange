import 'package:online_selling_interview_question/features/seat_selection/domain/entities/seats_status_response.dart';
import 'package:online_selling_interview_question/features/seat_selection/domain/repositories/seat_selection_repository.dart';

class SeatSelectionUseCase {
  final SeatSelectionRepository repository;

  SeatSelectionUseCase({required this.repository});

  Future<SeatsStatusResponse> getSeatsStatus(String stadiumId) {
    return Future.delayed(const Duration(seconds: 3), () {
      return repository.getSeatsStatus(stadiumId);
    });
  }
}
