import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:online_selling_interview_question/core/custom_widgets/online_selling_spacer.dart';

class LoadingPage extends StatelessWidget {
  final String? description;

  const LoadingPage({Key? key, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: Lottie.asset('assets/loading.json'),
            ),
            const OnlineSellingSpacer(
              height: 20,
            ),
            Text(description ?? "Please wait...")
          ],
        ),
      ),
    );
  }
}
