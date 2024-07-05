import 'package:flutter/material.dart';
import 'order_info_item.dart';

class SectionOfDetailsOrder extends StatelessWidget {
  const SectionOfDetailsOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OrderInfoItem(title:'Order Subtotal' , value:'42.97'),
        SizedBox(
          height: 3,
        ),
        OrderInfoItem(title:'Discount' , value:'0'),
        SizedBox(
          height: 3,
        ),
        OrderInfoItem(title:'Shopping' , value:'8'),
      ],
    );
  }
}
