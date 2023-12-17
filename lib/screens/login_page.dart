import 'package:flutter/material.dart';
import 'package:revo_dol/custom_widgets/reusable_textfield.dart';
import 'package:revo_dol/utils/constants.dart';
import 'package:revo_dol/utils/styles.dart';

class LogInPage extends StatefulWidget {
  LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _emailTextController = TextEditingController();
  final _pwTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 100, right: 20, left: 20, bottom: 20),
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(logoImg),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: ReusableTextField(
                  prefixIcon: Icons.person_rounded,
                  labelForTextField: 'Enter Your Email',
                  textEditingController: _emailTextController,
                  errorText: '',
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
                child: ReusableTextField(
                  prefixIcon: Icons.lock_outline_rounded,
                  labelForTextField: 'Enter Your Password',
                  textEditingController: _pwTextController,
                  errorText: '',
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                ),
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  style: logInPageElevatedButtonStyle,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', (_) => false);
                  },
                  child: Text(
                    "LOG IN",
                    style: kLogInElevatedButtonTextStyle,
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: const Text("Forget Password ?")),
            ],
          ),
        ),
      ),
    );
  }
}
