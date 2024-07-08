import 'package:flutter/material.dart';

import 'thank_you_cart.dart';

class ThinkYouViewBody extends StatelessWidget {
  const ThinkYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(clipBehavior: Clip.none, children: [
        const ThankYouCard(),
        const Positioned(
          left: 0,
          right: 0,
          top: -50,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xffEDEDED),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xff34A853),
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 60,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.2 + 10,
          right: 36,
          left: 36,
          child: const Divider(
            color: Color(0xffB8B8B8),
            thickness: 2,
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.2,
          right: -20,
          child: const CircleAvatar(
            backgroundColor: Color(0xffFFF8FF),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.2,
          left: -20,
          child: const CircleAvatar(
            backgroundColor: Color(0xffFFF8FF),
          ),
        ),
      ]),
    );
  }
}
