import 'package:online_selling_interview_question/features/seat_selection/domain/entities/seats_status_response.dart';
import 'package:online_selling_interview_question/features/seat_selection/domain/repositories/seat_selection_repository.dart';

///The usecases are those pure and third-party independent business logic
///of our app. Currently, our usecases are pretty simple!
class SeatSelectionUseCase {
  final SeatSelectionRepository repository;

  SeatSelectionUseCase({required this.repository});

  Future<SeatsStatusResponse> getSeatsStatus(String stadiumId) {
    return Future.delayed(const Duration(seconds: 3), () {
      return repository.getSeatsStatus(stadiumId);
    });
  }
}
