import 'package:flutter/material.dart';
import 'package:online_selling_interview_question/core/custom_widgets/online_selling_spacer.dart';
import 'package:online_selling_interview_question/features/seat_selection/presentation/manager/seat_selection_provider.dart';

class SeatsStatusDescription extends StatelessWidget {
  const SeatsStatusDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _SeatStatusDescriptionRow(
            description: "Reserved", seatStatus: SeatStatus.reserved),
        _SeatStatusDescriptionRow(
            description: "Free", seatStatus: SeatStatus.free),
        _SeatStatusDescriptionRow(
            description: "Selected", seatStatus: SeatStatus.selected),
      ],
    );
  }
}

class _SeatStatusDescriptionRow extends StatelessWidget {
  final String description;
  final SeatStatus seatStatus;

  const _SeatStatusDescriptionRow(
      {Key? key, required this.description, required this.seatStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Text(description),
          const OnlineSellingSpacer(
            width: 10,
          ),
          Icon(
            Icons.person_outline_sharp,
            color: _getColor(),
            size: 50,
          )
        ],
      ),
    );
  }

  Color _getColor() {
    if (seatStatus == SeatStatus.reserved) {
      return Colors.red;
    } else if (seatStatus == SeatStatus.free) {
      return Colors.green;
    } else {
      return Colors.black;
    }
  }
}
