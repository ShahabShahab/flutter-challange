import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:online_selling_interview_question/core/custom_widgets/online_selling_spacer.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Lottie.asset('assets/loading.json'),
            const OnlineSellingSpacer(
              height: 20,
            ),
            const Text("Please wait...")
          ],
        ),
      ),
    );
  }
}
