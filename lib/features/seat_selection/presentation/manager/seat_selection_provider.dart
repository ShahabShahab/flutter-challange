import 'package:online_selling_interview_question/core/base_provider.dart';
import 'package:online_selling_interview_question/features/seat_selection/domain/entities/seats_status_response.dart';
import 'package:online_selling_interview_question/features/seat_selection/domain/use_cases/seat_selection_usecase.dart';

class SeatSelectionProvider extends BaseProvider {
  final SeatSelectionUseCase useCase;

  SeatSelectionProvider({required this.useCase});

  Future<SeatsStatusResponse> getSeatsStatus(String stadiumId) async {
    return useCase.getSeatsStatus(stadiumId).then((response) {
      return response;
    });
  }
}
