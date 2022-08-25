import 'package:flutter/material.dart';
import 'package:tennis_app_clone/utils/constants.dart';
import 'package:ionicons/ionicons.dart';


class FitnessSession extends StatelessWidget {
  const FitnessSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kidClubColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Ionicons.chevron_back_outline,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 300,
                child: Image.asset("lib/assets/fitness.png"),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  color: backGroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 24.0, top: 32, right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Weightlifting session",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Take part in a 2-hour session where you\ncan expect plenty of rallyin followed by competitive point play team singles style.",
                            maxLines: 3,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                  Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                height: 90,
                                width: 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Icon(
                                        Icons.calendar_month,
                                        color: Colors.white,
                                        size: 33,
                                      ),
                                      Text(
                                        "17 Mars",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                  Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                height: 90,
                                width: 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Icon(
                                        Icons.access_time_outlined,
                                        color: Colors.white,
                                        size: 33,
                                      ),
                                      Text(
                                        "11:00 - 12:00",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                  Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                height: 90,
                                width: 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.white,
                                        size: 33,
                                      ),
                                      Text(
                                        "Beginner",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: greenButtonColor,
                                minimumSize: const Size.fromHeight(50), // NEW
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Participate \$10',
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
