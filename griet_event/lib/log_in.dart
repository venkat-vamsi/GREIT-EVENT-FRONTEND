// import 'package:flutter/material.dart';
// import 'package:griet_event/clubs_homepage.dart';
// import 'package:griet_event/register.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Center(child: Text('Login')),
//         backgroundColor: Colors.orange[100],
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: EdgeInsets.all(23),
//             child: Column(
//               children: [
//                 TextFieldWidget('Email Id', Icons.email, emailController),
//                 const SizedBox(height: 10),
//                 TextFieldWidget(
//                     'Password', Icons.password_outlined, passwordController),
//               ],
//             ),
//           ),
//           Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//             greenButton("Log In", () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const HomeScreen2()),
//               );
//             }),
//           ]),
//           const SizedBox(height: 15),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "Not a user? ",
//                 style: TextStyle(fontSize: 18),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const RegisterPage()),
//                   );
//                 },
//                 child: const Text(
//                   "Sign Up",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18,
//                       color: Colors.blue),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:griet_event/clubs_homepage.dart';
import 'package:griet_event/ipconfig.dart';
import 'package:griet_event/register.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Method to handle login
  Future<void> loginUser() async {
    final String url = '$baseUrl/clubs/login';
    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'clubContact': emailController.text,
        'password': passwordController.text,
      }),
    );

    if (response.statusCode == 200) {
      // If login is successful
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen2()),
      );
    } else {
      // If login fails
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid credentials. Please try again.')),
      );
      // You can add a delay if you want to show the invalid credentials message for a while
      await Future.delayed(const Duration(seconds: 2));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text('Login')),
        backgroundColor: Colors.orange[100],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(23),
            child: Column(
              children: [
                TextFieldWidget('Contact Number', Icons.email, emailController),
                const SizedBox(height: 10),
                TextFieldWidget(
                    'Password', Icons.password_outlined, passwordController),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            greenButton("Log In", loginUser),
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

// Reusable text field widget
Widget TextFieldWidget(
    String title, IconData iconData, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xffA7A7A7),
        ),
      ),
      const SizedBox(
        height: 6,
      ),
      Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 1,
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextFormField(
          controller: controller,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Color(0xffA7A7A7),
          ),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Icon(
                iconData,
                color: Colors.black,
              ),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    ],
  );
}

// Green button widget
Widget greenButton(String title, Function onPressed) {
  return MaterialButton(
    height: 50,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    color: Colors.green,
    onPressed: () => onPressed(),
    child: Text(
      title,
      style: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}
