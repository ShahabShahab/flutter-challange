import 'package:flutter/material.dart';
import 'package:online_selling_interview_question/core/base_provider.dart';
import 'package:online_selling_interview_question/core/constants.dart';
import 'package:online_selling_interview_question/features/seat_selection/domain/entities/seats_status_response.dart';
import 'package:online_selling_interview_question/features/seat_selection/domain/use_cases/seat_selection_usecase.dart';

class SeatSelectionProvider extends BaseProvider {
  final SeatSelectionUseCase useCase;

  SeatSelectionProvider({required this.useCase});

  late List<List<int>> seatsStatus;

  Future<SeatsStatusResponse> getSeatsStatus(String stadiumId) async {
    return useCase.getSeatsStatus(stadiumId).then((response) {
      seatsStatus = response.seats;
      return response;
    });
  }

  void selectSeat(int xCoordinate, int yCoordinate) {
    if (seatsStatus[xCoordinate][yCoordinate] == Constants.reserved) {
      debugPrint('SeatSelectionProvider.selectSeat already selected!');
    } else {
      seatsStatus[xCoordinate][yCoordinate] = Constants.reserved;
      setState(ViewState.IDLE);
    }
  }
}

enum SeatStatus { reserved, selected, free }
