import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});

  final void Function() onPressed;

  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 72,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: const Color(0xff34A853),
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.style22,
      ),
    );
  }
}
