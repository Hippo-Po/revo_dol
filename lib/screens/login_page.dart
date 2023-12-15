import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revo_dol/reusable_content/reusable_textfield.dart';

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
                child: const Image(
                  image: AssetImage('assets/images/test_logo.png'),
                  width: 200,
                  height: 100,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, right: 20, left: 20),
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
                  labelForTextField: 'Enter Your Email',
                  textEditingController: _pwTextController,
                  errorText: '',
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                ),
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', (_) => false);
                  },
                  child: const Text("LOGIN"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
