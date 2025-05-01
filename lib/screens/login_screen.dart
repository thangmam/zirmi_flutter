import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:zirmi_flutter/screens/home_screen.dart';
import 'package:zirmi_flutter/utils/mq_utils.dart';
import 'package:zirmi_flutter/widgets/app_text_formfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _userController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: MqUtils.sw(context: context) * 0.6,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // DRY - Don't repeat Yourself
              AppTextFormfield(label: "Username", controller: _userController),
              SizedBox(height: 10),
              AppTextFormfield(
                label: "Password",
                isPassword: true,
                controller: _passwordController,
              ),

              SizedBox(height: 30),

              FilledButton(
                onPressed: () {
                  log(
                    "username is ${_userController.text} | Password is ${_passwordController.text}",
                    name: "login_screen",
                  );
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => HomeScreen()),
                  // );
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
