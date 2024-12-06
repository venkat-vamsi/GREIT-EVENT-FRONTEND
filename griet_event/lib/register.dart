// import 'package:flutter/material.dart';
// import 'package:griet_event/clubs_homepage.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   TextEditingController clubNameController = TextEditingController();
//   TextEditingController clubmailIdController = TextEditingController();
//   TextEditingController clubContactController = TextEditingController();
//   TextEditingController clubDescController = TextEditingController();
//   TextEditingController uAIDController = TextEditingController();
//   TextEditingController yTController = TextEditingController();
//   TextEditingController inController = TextEditingController();
//   TextEditingController liInController = TextEditingController();
//   TextEditingController discordController = TextEditingController();
//   TextEditingController othersLinkController = TextEditingController();
//   TextEditingController passController = TextEditingController();
//   TextEditingController confirmPassController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Center(child: Text('Register')),
//         backgroundColor: Colors.orange[100],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               padding: EdgeInsets.all(23),
//               child: Column(
//                 children: [
//                   TextFieldWidget('Club Name', Icons.maps_home_work_rounded,
//                       clubNameController),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldWidget('Email Id', Icons.mail, clubmailIdController),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldWidget('Contact No. (co-ordinator)', Icons.phone,
//                       clubContactController),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextAreaWidget('Description', clubDescController),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldWidget('Unique Authentication ID', Icons.lock_open,
//                       uAIDController),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldWidget(
//                       'Youtube Channel Link', Icons.link, yTController),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldWidget(
//                       'Intagram Page Link', Icons.link, inController),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldWidget(
//                       'LinkedIn Page Link', Icons.link, liInController),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldWidget(
//                       'Discord Link', Icons.link, discordController),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldWidget(
//                       'Others (Link)', Icons.link, othersLinkController),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldWidget('Password', Icons.password, passController),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextFieldWidget('Confirm Password', Icons.password,
//                       confirmPassController),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                 ],
//               ),
//             ),
//             Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     greenButton("Register", () {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => HomeScreen2()),
//       );
//     }),
//   ],
// )

//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget TextFieldWidget(
//     String title, IconData iconData, TextEditingController controller) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         title,
//         style: TextStyle(
//           fontSize: 14,
//           fontWeight: FontWeight.w600,
//           color: const Color(0xffA7A7A7),
//         ),
//       ),
//       const SizedBox(
//         height: 6,
//       ),
//       Container(
//         height: 50,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.05),
//               spreadRadius: 1,
//               blurRadius: 1,
//             ),
//           ],
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: TextFormField(
//           controller: controller,
//           style: TextStyle(
//             fontSize: 17,
//             fontWeight: FontWeight.w600,
//             color: const Color(0xffA7A7A7),
//           ),
//           decoration: InputDecoration(
//             prefixIcon: Padding(
//               padding: const EdgeInsets.only(
//                 left: 10,
//               ),
//               child: Icon(
//                 iconData,
//                 color: Colors.black,
//               ),
//             ),
//             border: InputBorder.none,
//           ),
//         ),
//       ),
//     ],
//   );
// }

// Widget TextAreaWidget(String title, TextEditingController controller) {
//   return SingleChildScrollView(
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w600,
//             color: const Color(0xffA7A7A7),
//           ),
//         ),
//         const SizedBox(
//           height: 6,
//         ),
//         Container(
//           height: 150,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.05),
//                 spreadRadius: 1,
//                 blurRadius: 1,
//               ),
//             ],
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: TextField(
//             maxLength: 200,
//             maxLines: null,
//             expands: true,
//             controller: controller,
//             style: const TextStyle(
//               fontSize: 17,
//               fontWeight: FontWeight.w600,
//               color: Color(0xffA7A7A7),
//             ),
//             decoration: const InputDecoration(
//               border: InputBorder.none,
//               contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }

// Widget greenButton(String title, Function onPressed) {
//   return MaterialButton(
//     height: 50,
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//     color: Colors.green,
//     onPressed: () => onPressed(),
//     child: Text(
//       title,
//       style: TextStyle(
//           fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
//     ),
//   );
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:griet_event/ipconfig.dart';
import 'package:http/http.dart' as http;

import 'clubs_homepage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController clubNameController = TextEditingController();
  TextEditingController clubmailIdController = TextEditingController();
  TextEditingController clubContactController = TextEditingController();
  TextEditingController clubDescController = TextEditingController();
  TextEditingController uAIDController = TextEditingController();
  TextEditingController yTController = TextEditingController();
  TextEditingController inController = TextEditingController();
  TextEditingController liInController = TextEditingController();
  TextEditingController discordController = TextEditingController();
  TextEditingController othersLinkController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  // Register the club by sending data to the backend
  Future<void> registerClub() async {
    //String apiUrl = 'http://localhost:8080/clubs/register'; // Change this URL to your Spring Boot server URL
    String apiUrl = '$baseUrl/clubs/create';
    // Prepare the data to send
    var body = json.encode({
      'clubName': clubNameController.text,
      'clubContact': clubContactController.text,
      'clubDescription': clubDescController.text,
      'UAI': uAIDController.text,
      'clubYoutube': yTController.text,
      'clubInstagram': inController.text,
      'clubLinkedIn': liInController.text,
      'clubDiscord': discordController.text,
      'clubWebsite': othersLinkController.text,
      'password': passController.text,
    });

    try {
      // Send POST request
      var response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: body,
      );

      if (response.statusCode == 201) {
        // If registration is successful, navigate to the next page
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomeScreen2()), // Update with your next page route
        );
      } else {
        // Show error if something went wrong
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${response.body}')),
        );
      }
    } catch (e) {
      // Handle error, like no internet or bad response
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to register: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Register')),
        backgroundColor: Colors.orange[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(23),
              child: Column(
                children: [
                  TextFieldWidget('Club Name', Icons.maps_home_work_rounded,
                      clubNameController),
                  const SizedBox(height: 10),
                  TextFieldWidget('Email Id', Icons.mail, clubmailIdController),
                  const SizedBox(height: 10),
                  TextFieldWidget('Contact No. (co-ordinator)', Icons.phone,
                      clubContactController),
                  const SizedBox(height: 10),
                  TextAreaWidget('Description', clubDescController),
                  const SizedBox(height: 10),
                  TextFieldWidget('Unique Authentication ID', Icons.lock_open,
                      uAIDController),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                      'Youtube Channel Link', Icons.link, yTController),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                      'Instagram Page Link', Icons.link, inController),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                      'LinkedIn Page Link', Icons.link, liInController),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                      'Discord Link', Icons.link, discordController),
                  const SizedBox(height: 10),
                  TextFieldWidget(
                      'Others (Link)', Icons.link, othersLinkController),
                  const SizedBox(height: 10),
                  TextFieldWidget('Password', Icons.password, passController),
                  const SizedBox(height: 10),
                  TextFieldWidget('Confirm Password', Icons.password,
                      confirmPassController),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                greenButton("Register", () {
                  registerClub();
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget TextFieldWidget(
    String title, IconData iconData, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: const Color(0xffA7A7A7),
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
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: const Color(0xffA7A7A7),
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

Widget TextAreaWidget(String title, TextEditingController controller) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: const Color(0xffA7A7A7),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Container(
          height: 150,
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
          child: TextField(
            maxLength: 200,
            maxLines: null,
            expands: true,
            controller: controller,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Color(0xffA7A7A7),
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget greenButton(String title, Function onPressed) {
  return MaterialButton(
    height: 50,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    color: Colors.green,
    onPressed: () => onPressed(),
    child: Text(
      title,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}
