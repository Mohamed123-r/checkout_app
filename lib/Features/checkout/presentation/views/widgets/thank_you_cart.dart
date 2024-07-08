import 'package:flutter/material.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffD9D9D9),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
