import 'package:checkout_app/Features/checkout/presentation/views/widgets/payment_item.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PaymentItem(isSelected: true, image: 'assets/images/cart.svg',),
              PaymentItem(isSelected: false, image: 'assets/images/paypal.svg',),
              PaymentItem(isSelected: false, image: 'assets/images/applepay.svg',),
            ],
          ),
        ],
      ),
    );
  }
}
