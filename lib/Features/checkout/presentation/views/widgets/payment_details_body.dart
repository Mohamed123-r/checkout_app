import 'package:flutter/material.dart';
import 'payment_list_view_item.dart';


class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          PaymentListViewItem(),
        ],
      ),
    );
  }
}


