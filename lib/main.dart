import 'package:flutter/material.dart';
import 'package:online_selling_interview_question/core/di/container.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/use_cases/login_usecase.dart';
import 'package:online_selling_interview_question/features/auth/login/presentation/manager/login_provider.dart';
import 'package:online_selling_interview_question/features/auth/login/presentation/pages/login_page.dart';
import 'package:online_selling_interview_question/features/home/presentation/manager/home_provider.dart';
import 'package:online_selling_interview_question/features/home/presentation/pages/home_page.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initContainer();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => container<LoginProvider>()),
        ChangeNotifierProvider(create: (context) => container<HomeProvider>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: LoginPage(),
      ),
    );
  }
}
