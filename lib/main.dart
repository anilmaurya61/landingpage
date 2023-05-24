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
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;

    return Scaffold(
      backgroundColor: const Color(0xFF2B1845),
      body: SmokeCursor(
        child: Column(
          children: [
            // Your landing page content here
            HomePage(screenWidth: screenWidth),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.screenWidth}) : super(key: key);

  final double screenWidth;

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
                    padding: EdgeInsets.only(
                      left: widget.screenWidth * 0.05,
                    ),
                    child: Image.asset(
                      'assets/logo.png', // Replace with your logo image path
                      height: widget.screenWidth * 0.08,
                    ),
                  ),
                  SizedBox(height: widget.screenWidth * 0.03),
                  Container(
                    padding: EdgeInsets.only(
                      left: widget.screenWidth * 0.05,
                    ),
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
                            fontSize: widget.screenWidth*0.056,
                            height: 58 / 72,
                          ),
                        ),
                        SizedBox(height: widget.screenWidth * 0.028),
                        Text(
                          'coming soon...',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                            fontSize: widget.screenWidth*0.056,
                            height: 58 / 72,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: widget.screenWidth * 0.02),
                  Padding(
                    padding: EdgeInsets.only(
                      left: widget.screenWidth * 0.05,
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Container(
                          height: widget.screenWidth * 0.043,
                          width: widget.screenWidth * 0.373,
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
                                top: 20.0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: widget.screenWidth * 0.005,
                          top: widget.screenWidth * 0.005,
                          bottom: widget.screenWidth * 0.005,
                          child: Container(
                            height: widget.screenWidth * 0.327,
                            width: widget.screenWidth * 0.088,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  timeDilation =
                                      2.0; // Adjust the animation speed here
                                  isButtonClicked = true;
                                });
                                Future.delayed(
                                    const Duration(milliseconds: 1000), () {
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
                                backgroundColor: const Color(0xFF2B1845),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  AnimatedPositioned(
                                    duration: const Duration(milliseconds: 500),
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
                                    duration: const Duration(milliseconds: 100),
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
              height: widget.screenWidth * 0.477,
              width: widget.screenWidth * 0.437,
            ),
          ],
        ),
      ),
    );
  }
}









































