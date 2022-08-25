import 'package:flutter/material.dart';

class TrainingWidget extends StatelessWidget {
  final String heading;
  final String description;
  final String image;
  final String price;

  const TrainingWidget({Key? key, required this.heading, required this.description, required this.image, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
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
            SizedBox(width: 14,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(heading,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
                SizedBox(height: 4,),
                Text(description),
              ],
            )
          ],
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            color: Colors.black,
          ),
          child: Center(child: Text(price,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
        ),

      ],
    );
  }
}
