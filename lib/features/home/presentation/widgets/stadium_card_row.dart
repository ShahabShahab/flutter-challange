import 'package:flutter/material.dart';

class StadiumCardRow extends StatelessWidget {
  final String name;

  const StadiumCardRow({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(10),
          elevation: 5,
          color: Colors.red,
          child: SizedBox(
            width: double.maxFinite,
            child: Center(child: Text(name)),
          ),
        ),
      ),
    );
  }
}
