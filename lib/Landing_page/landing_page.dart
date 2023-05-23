// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final TextEditingController emailController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Company Webpage'),
//       ),
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'assets/company_logo.png', // Replace with your logo image path
//                 height: 100,
//               ),
//               SizedBox(height: 20),
//               Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       controller: emailController,
//                       decoration: InputDecoration(
//                         hintText: 'Enter your email',
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {
//                       String email = emailController.text;
//                       // TODO: Handle the email notification logic
//                       print('Email: $email');
//                     },
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.grey, // Set the background color to gray
//                     ),
//                     child: Text('Notify'),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Image.asset(
//                 'assets/other_image.png', // Replace with your other image path
//                 height: 200,
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/second');
//                 },
//                 child: Text('Go to Second Page'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
