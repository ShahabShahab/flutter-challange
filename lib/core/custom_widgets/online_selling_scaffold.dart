import 'package:flutter/material.dart';

class OnlineSellingScaffold extends StatelessWidget {
  final Widget body;
  final Widget? bottomNavigation;

  const OnlineSellingScaffold(
      {Key? key, required this.body, this.bottomNavigation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(), body: body, bottomNavigationBar: bottomNavigation);
  }
}
