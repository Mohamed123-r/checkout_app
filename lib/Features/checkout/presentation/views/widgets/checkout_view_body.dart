import 'package:checkout_app/Features/checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';
import '../payment_details_view.dart';
import 'custom_button.dart';
import 'section_of_details_order.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/basket_image.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const SectionOfDetailsOrder(),
          const Divider(
            height: 30,
            indent: 15,
            endIndent: 15,
            color: Color(0xffC7C7C7),
            thickness: 2,
          ),
          const TotalPrice(
            title: 'Total',
            value: '50.97',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PaymentDetailsView();
                  },
                ),
              );
            },
            text: 'Complete Payment',
          ),
        ],
      ),
    );
  }
}
