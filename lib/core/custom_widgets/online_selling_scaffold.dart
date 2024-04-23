import 'package:flutter/material.dart';

class OnlineSellingScaffold extends StatelessWidget {
  final Widget body;

  const OnlineSellingScaffold({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: body,
    );
  }
}
