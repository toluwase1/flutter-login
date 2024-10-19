import 'package:flutter/material.dart';
import 'package:login_page/components/my_button.dart';
import 'package:login_page/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

//sign in
  void signUserIn(
    Print("signing user in"),
  ) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),
              //welcome back message
              const Text("Welcome Back, We missed you!!!"),

              //username textfield
              MyTextfield(
                controller: usernameController,
                hintText: "username",
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              //password textfield
              MyTextfield(
                controller: passwordController,
                hintText: "password",
                obscureText: true,
              ),

              const SizedBox(
                height: 10,
              ),
              //forgot password
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ])),

              const SizedBox(
                height: 25,
              ),
              //signin field
              MyButton(onTap: signUserIn),
              //continue field

              // google and apple logo

              // not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}
