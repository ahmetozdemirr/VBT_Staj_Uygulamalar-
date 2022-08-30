import 'package:flutter/material.dart';
import 'package:vbt_wallet/animation/fade_animation.dart';

class IconWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final Color color;
  final double delayAnimation;
  const IconWidget(
      {Key? key,
      required this.title,
      required this.child,
      required this.color,
      required this.delayAnimation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeAnimation(
          delay: delayAnimation,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(30),
            ),
            child: child,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        FadeAnimation(
          delay: delayAnimation,
          child: Text(
            title,
            style: const TextStyle(color: Colors.grey),
          ),
        )
      ],
    );
  }
}
