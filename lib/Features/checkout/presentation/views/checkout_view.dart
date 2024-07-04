import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: Styles.style25,
        ),
        leading: Center(
          child: SvgPicture.asset(
            'assets/images/Arrow.svg',
          ),
        ),
      ),
    );
  }
}
