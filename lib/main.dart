// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart' show timeDilation;
// import 'animation/mouseregion.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       backgroundColor: const Color(0xFF2B1845),
//       body: SmokeCursor(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(left: screenWidth * 0.16),
//                 child: Image.asset(
//                   'assets/logo.png', // Replace with your logo image path
//                   height: 100,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 padding: EdgeInsets.only(left: screenWidth * 0.16),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'We are',
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontFamily: 'DM Sans',
//                         fontWeight: FontWeight.w700,
//                         fontSize: screenHeight * 0.088,
//                         height: screenHeight * 0.081 / screenHeight * 0.088,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Text(
//                       'coming soon...',
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontFamily: 'DM Sans',
//                         fontWeight: FontWeight.w700,
//                         fontSize: screenHeight * 0.088,
//                         height: screenHeight * 0.081 / screenHeight * 0.088,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 40),
//               Padding(
//                 padding: EdgeInsets.only(left: screenWidth * 0.16),
//                 child: Stack(
//                   alignment: Alignment.centerRight,
//                   children: [
//                     Container(
//                       height: 70.0,
//                       width: 573.0,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: TextField(
//                         decoration: const InputDecoration(
//                           hintText: 'Enter your email',
//                           border: InputBorder.none,
//                           hintStyle: TextStyle(
//                             fontSize: 16,
//                           ),
//                           contentPadding: EdgeInsets.only(
//                             left: 40.0,
//                             top: 26.0,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       right: 12.0,
//                       top: 12.0,
//                       bottom: 12.0,
//                       child: Container(
//                         height: 46.0,
//                         width: 107.36,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             backgroundColor: const Color(0xFF2B1845),
//                           ),
//                           child: Stack(
//                             alignment: Alignment.center,
//                             children: [
//                               const Icon(
//                                 Icons.airplanemode_active,
//                                 color: Colors.white,
//                               ),
//                               const Text(
//                                 'Notify',
//                                 textAlign: TextAlign.center,
//                                 style:
//                                 TextStyle(
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 40),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/logo.png', // Replace with your logo image path
//                     height: 100,
//                   ),
//                   const SizedBox(width: 20),
//                   Image.asset(
//                     'assets/ai-robot.png', // Replace with your other image path
//                     height: 500.0,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }














import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'animation/mouseregion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B1845),
      body: SmokeCursor(
        child: Column(
          children: [
            // Your landing page content here
            HomePage(),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController emailController = TextEditingController();

  bool isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 118.0),
                    child: Image.asset(
                      'assets/logo.png', // Replace with your logo image path
                      height: 100,
                    ),
                  ),
                  SizedBox(height: 64.0),
                  Container(
                    padding: EdgeInsets.only(left: 118.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'We are',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                            fontSize: 72,
                            height: 58 / 72,
                          ),
                        ),
                        SizedBox(height: 28),
                        Text(
                          'coming soon...',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                            fontSize: 72,
                            height: 58 / 72,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 118.0),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Container(
                          height: 70.0,
                          width: 573.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              hintText: 'Enter your email',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              contentPadding: EdgeInsets.only(
                                left: 40.0,
                                top: 26.0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 12.0,
                          top: 12.0,
                          bottom: 12.0,
                          child: Container(
                            height: 46.0,
                            width: 107.36,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  timeDilation =
                                      2.0; // Adjust the animation speed here
                                  isButtonClicked = true;
                                });

                                Future.delayed(Duration(milliseconds: 1000),
                                    () {
                                  setState(() {
                                    timeDilation =
                                        1.0; // Reset the animation speed
                                    isButtonClicked = false;
                                  });

                                  String email = emailController.text;
                                  // TODO: Handle the email notification logic
                                  print('Email: $email');
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                backgroundColor: Color(0xFF2B1845),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  AnimatedPositioned(
                                    duration: Duration(milliseconds: 500),
                                    right: isButtonClicked ? -30.0 : 0.0,
                                    top: isButtonClicked ? -30.0 : 0.0,
                                    child: Opacity(
                                      opacity: isButtonClicked ? 0.0 : 0.0,
                                      child: Icon(
                                        Icons.airplanemode_active,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  AnimatedOpacity(
                                    duration: Duration(milliseconds: 100),
                                    opacity: isButtonClicked ? 0.0 : 1.0,
                                    child: const Text(
                                      'Notify',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 46.0),
            Image.asset(
              'assets/ai-robot.png', // Replace with your other image path
              height: 719.0,
              width: 720.0,
            ),
          ],
        ),
      ),
    );
  }
}
