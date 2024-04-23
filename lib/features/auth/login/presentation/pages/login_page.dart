import 'package:flutter/material.dart';
import 'package:online_selling_interview_question/core/custom_widgets/online_selling_back_button.dart';
import 'package:online_selling_interview_question/core/custom_widgets/online_selling_spacer.dart';
import 'package:online_selling_interview_question/core/custom_widgets/online_selling_submit_button.dart';
import 'package:online_selling_interview_question/features/auth/login/presentation/manager/login_provider.dart';
import 'package:online_selling_interview_question/features/auth/login/presentation/widgets/create_account_label.dart';
import 'package:online_selling_interview_question/features/auth/login/presentation/widgets/login_page_title.dart';
import 'package:online_selling_interview_question/features/auth/login/presentation/widgets/login_with_facebook_button.dart';
import 'package:online_selling_interview_question/features/home/presentation/pages/home_page.dart';
import 'package:online_selling_interview_question/single_pages/loading_page.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              controller:
                  isPassword ? _passwordController : _usernameController,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Username"),
        _entryField("Password", isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(body: Consumer<LoginProvider>(
      builder:
          (BuildContext context, LoginProvider loginProvider, Widget? child) {
        if (loginProvider.isLoading) {
          return const LoadingPage();
        } else {
          return SizedBox(
            height: height,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OnlineSellingSpacer(height: height * .2),
                        const LoginPageTitle(),
                        const OnlineSellingSpacer(height: 50),
                        _emailPasswordWidget(),
                        const OnlineSellingSpacer(height: 20),
                        OnlineSellingSubmitButton(onClicked: _login),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.centerRight,
                          child: const Text('Forgot Password ?',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                        ),
                        _SocialMediaLoginDivider(),
                        const LoginWithFacebookButton(),
                        OnlineSellingSpacer(height: height * .055),
                        const CreateAccountLabel(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    ));
  }

  void _login() {
    Provider.of<LoginProvider>(context, listen: false)
        .login(_usernameController.text, _passwordController.text)
        .then((response) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }
}

class _SocialMediaLoginDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
