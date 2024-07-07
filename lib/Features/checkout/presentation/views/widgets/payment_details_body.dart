import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_credit_card.dart';
import 'payment_list_view_item.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(slivers: [
        const SliverToBoxAdapter(child: PaymentListViewItem()),
        SliverToBoxAdapter(
            child: CustomCreditCard(
          formKey: formKey,
          autovalidateMode: autovalidateMode,
        )),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'Pay'),
          ),
        ),
      ]),
    );
  }
}
