import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tennis_app_clone/screens/home_screen.dart';
import 'package:tennis_app_clone/utils/background_painter.dart';
import 'package:tennis_app_clone/utils/constants.dart';
import 'package:tennis_app_clone/wdigets/level_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Widget Background() {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: backGroundColor,
        ),
        Positioned(
          top: -440,
          left: -440,
          child: CustomPaint(
            size: const Size(280, 280),
            painter: BackgroundPainter(),
          ),
        ),
        Positioned(
          bottom: 160,
          left: 190,
          child: CustomPaint(
            size: const Size(180, 180),
            painter: BackgroundPainter(),
          ),
        ),
        Positioned(
          bottom: 150,
          left: -620,
          child: CustomPaint(
            size: const Size(350, 350),
            painter: BackgroundPainter(),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Background(),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    'Choose your level',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    height: 400,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(28),
                      children: [
                        const LevelWidget(
                          levelText: 'Beginner',
                          image: 'lib/assets/arm.png',
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        const LevelWidget(
                          levelText: 'Average',
                          image: 'lib/assets/heart.png',
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                          child: const LevelWidget(
                            levelText: 'Pro',
                            image: 'lib/assets/glasses.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  /*ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Icon(
                      Ionicons.chevron_forward_outline,
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      primary: greenColor, // <-- Button color
                      //onPrimary: Colors.red, // <-- Splash color
                    ),
                  ),*/
                  const SizedBox(
                    height: 45,
                  ),
                  const Text(
                    "Skip for now",
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
