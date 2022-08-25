import 'package:flutter/material.dart';
import 'package:tennis_app_clone/screens/training_screens/fitness_screen.dart';
import 'package:tennis_app_clone/screens/training_screens/swim_screen.dart';
import 'package:tennis_app_clone/utils/constants.dart';
import 'package:tennis_app_clone/wdigets/clubWidget.dart';
import 'package:tennis_app_clone/wdigets/level_widget.dart';
import 'package:tennis_app_clone/wdigets/training_widget.dart';

import 'training_screens/mens_league_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: const Text(
                'Clubs',
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 25),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const ClubWidget(
                      color: kidClubColor,
                      right: -50,
                      bottom: 1,
                      image: 'lib/assets/tenniswoman.png',
                      heading: "Women's\nClub",
                      number_of_events: "2 events",
                      level: "All levels",
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const ClubWidget(
                      color: menClubColor,
                      bottom: -30,
                      right: 20,
                      image: 'lib/assets/tennisman.png',
                      heading: "Men's\nClub",
                      number_of_events: "3 events",
                      level: "All levels",
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const ClubWidget(
                      color: womenClubColor,
                      bottom: -30,
                      right: -20,
                      image: 'lib/assets/kidtennis.png',
                      heading: "Kid's\nClub",
                      number_of_events: "6 events",
                      level: "Beginner",
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Train',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Alles',
                    style: TextStyle(
                        fontSize: 18,
                        color: greenColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const TrainingWidget(
                      image: "lib/assets/yoga.png",
                      description: "Feb 27 | 10:00am - 11:00am",
                      heading: "Yoga & Tennis",
                      price: "\$15",
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const TrainingWidget(
                      image: "lib/assets/tennis.png",
                      description: "July 17 | 11:00am - 12:00am",
                      heading: "Beginner Bootcamp",
                      price: "\$10",
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MensLeague()));
                      },
                      child: const TrainingWidget(
                        image: "lib/assets/arm.png",
                        description: "Feb 24 | 06:00pm - 08:00pm",
                        heading: "Men's League",
                        price: "\$30",
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FitnessSession()));
                      },
                      child: TrainingWidget(
                        image: "lib/assets/wheightlifting.png",
                        description: "Mars 17 | 11:00am - 12:00am",
                        heading: "Weightlifting session",
                        price: "\$10",
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SwimSession()));
                      },
                      child: const TrainingWidget(
                        image: "lib/assets/swim.png",
                        description: "July 17 | 09:00am - 11:00am",
                        heading: "Swimming session",
                        price: "\$15",
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
