import 'package:flutter/material.dart';
import 'package:griet_event/clubs_homepage.dart';
import 'package:griet_event/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Login')),
        backgroundColor: Colors.orange[100],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(23),
            child: Column(
              children: [
                TextFieldWidget('Email Id', Icons.email, emailController),
                const SizedBox(height: 10),
                TextFieldWidget(
                    'Password', Icons.password_outlined, passwordController),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            greenButton("Log In", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen2()),
              );
            }),
          ]),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Not a user? ",
                style: TextStyle(fontSize: 18),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterPage()),
                  );
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
