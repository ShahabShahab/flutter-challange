import 'package:flutter/material.dart';

class SeatRow extends StatelessWidget {
  final bool reserved;

  const SeatRow({Key? key, required this.reserved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Icon(
        Icons.person_outline_sharp,
        color: reserved ? Colors.red : Colors.green,
      ),
    );
  }
}
