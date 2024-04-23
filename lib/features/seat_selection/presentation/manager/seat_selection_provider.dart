import 'package:flutter/material.dart';
import 'package:online_selling_interview_question/core/base_provider.dart';
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

  void selectSeat(int xCoordinate, int yCoordinate,
      {required Function(String message) onSeatSelected}) {
    if (_seatAlreadyReserved(xCoordinate, yCoordinate)) {
      onSeatSelected("This seat is already selected!");
    } else if (_seatIsFreeToSelect(xCoordinate, yCoordinate)) {
      seatsStatus[xCoordinate][yCoordinate] = SeatStatus.selected.index;
      setState(ViewState.IDLE);
    } else {
      seatsStatus[xCoordinate][yCoordinate] = SeatStatus.free.index;
      setState(ViewState.IDLE);
    }
  }

  bool _seatIsFreeToSelect(int xCoordinate, int yCoordinate) =>
      seatsStatus[xCoordinate][yCoordinate] == SeatStatus.free.index;

  bool _seatAlreadyReserved(int xCoordinate, int yCoordinate) =>
      seatsStatus[xCoordinate][yCoordinate] == SeatStatus.reserved.index;
}

enum SeatStatus { free, reserved, selected }
