import 'package:flutter/material.dart';
import 'package:online_selling_interview_question/features/seat_selection/presentation/manager/seat_selection_provider.dart';

class SeatRow extends StatelessWidget {
  final int type;

  const SeatRow({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.person_outline_sharp,
      color: _getColor(),
      size: 50,
    );
  }

  Color _getColor() {
    if( type == SeatStatus.free.index ){
      return Colors.green;
    } else if ( type == SeatStatus.reserved.index ){
      return Colors.red;
    } else{
      return Colors.black;
    }
  }
}
