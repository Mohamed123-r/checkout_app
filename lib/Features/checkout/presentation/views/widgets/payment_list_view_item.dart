import 'package:flutter/material.dart';

import 'payment_item.dart';

class PaymentListViewItem extends StatefulWidget {
  const PaymentListViewItem({
    super.key,
  });

  @override
  State<PaymentListViewItem> createState() => _PaymentListViewItemState();
}

class _PaymentListViewItemState extends State<PaymentListViewItem> {
  List items = [
    'assets/images/cart.svg',
    'assets/images/paypal.svg',
    'assets/images/applepay.svg',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: PaymentItem(
              image: items[index],
              isActive: index == selectedIndex,
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 15,
          );
        },
      ),
    );
  }
}