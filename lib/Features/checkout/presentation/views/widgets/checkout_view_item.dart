import 'package:flutter/cupertino.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          'assets/images/basket_image.png',
        ),
      ],
    );
  }
}
