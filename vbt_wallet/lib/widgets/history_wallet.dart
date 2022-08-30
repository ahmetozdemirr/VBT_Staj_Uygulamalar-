import 'package:flutter/material.dart';
import 'package:vbt_wallet/animation/fade_animation.dart';

class HistoryWallet extends StatelessWidget {
  final String title;
  final String day;
  final String time;
  final String image;
  final bool isPositive;
  final String money;

  const HistoryWallet(
      {Key? key,
      required this.title,
      required this.day,
      required this.time,
      required this.image,
      required this.isPositive,
      required this.money})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 2,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.99,
        height: MediaQuery.of(context).size.height * 0.085,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Color(0xFF282A40),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(image),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    Text(
                      time,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      day,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              isPositive ? "+" : "-",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "images/us-dollar.png",
              width: MediaQuery.of(context).size.width * 0.035,
              height: MediaQuery.of(context).size.height * 0.035,
              color: Colors.white,
            ),
            Text(
              money,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
