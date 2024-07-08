import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_info_cart.dart';
import 'payment_item_info.dart';
import 'total_price.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      decoration: BoxDecoration(
        color: const Color(0xffEDEDED),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66.0),
        child: Column(
          children: [
            const Text(
              "Thank you!",
              style: Styles.style25,
            ),
            Text(
              "Your transaction was successful",
              style: Styles.style20,
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentItemInfo(
              title: 'Date',
              subTitle: '01/12/2022',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              title: 'Time',
              subTitle: '10:15 AM',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              title: 'To',
              subTitle: 'Sam Louis',
            ),
            const Divider(
              color: Color(0xffC7C7C7),
              height: 60,
              thickness: 2,
            ),
            const TotalPrice(
              title: 'Total',
              value: '50.97',
            ),
            const SizedBox(
              height: 30,
            ),
            const CardInfoCart(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.barcode,
                  weight: 150,
                  size: 70,
                ),
                Container(
                  width: 120,
                  height: 60,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff34A853), width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "PAID",
                      style: Styles.style24.copyWith(
                        color: Color(0xff34A853)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2/2 -30,
            )
          ],
        ),
      ),
    );
  }
}
