import 'package:flutter/cupertino.dart';
import 'order_info_item.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/basket_image.png',
          ),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(title:'Order Subtotal' , value:'42.97'),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(title:'Discount' , value:'0'),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(title:'Shopping' , value:'8'),
        ],
      ),
    );
  }
}

