import 'package:flutter/cupertino.dart';
import 'custom_button_bloc_consumer.dart';
import 'payment_list_view_item.dart';

class PaymentBottomSheet extends StatelessWidget {
  const PaymentBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 12,
          ),
          PaymentListViewItem(),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomButtonBlocConsumer(),
          )
        ],
      ),
    );
  }
}
