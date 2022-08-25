import 'package:flutter/material.dart';
import 'package:tennis_app_clone/utils/constants.dart';

class LevelWidget extends StatelessWidget {
  final String levelText;
  final String image;

  const LevelWidget({Key? key, required this.levelText, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: levelBackground,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Transform.rotate(
                angle: 45,
                  child: Container(
                width: 30,
                color: Colors.grey,
                height: 2,
              )),
              Column(
                children: [
                  Container(
                    width: 2,
                    color: Colors.grey,
                    height: 30,
                  ),
                  SizedBox(height: 25,),
                ],
              ),
              Transform.rotate(
                angle: -45,
                child: Container(
                  width: 30,
                  color: Colors.grey,
                  height: 2,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 30,
                  color: Colors.grey,
                  height: 2,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      image,
                      height: 10,
                      width: 10,
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  color: Colors.grey,
                  height: 2,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            levelText,
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
