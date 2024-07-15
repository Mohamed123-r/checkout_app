import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/payment_intent_input_model.dart';
import '../../manage/payment_cubit.dart';
import '../think_you_view.dart';
import 'custom_button.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ThinkYouView(),
            ),
          );
        } else if (state is PaymentFailure) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        return CustomButton(
            onPressed: () {
              context.read<PaymentCubit>().makePayment(
                    paymentIntentInputModel: PaymentIntentInputModel(
                      amount: "1099",
                      currency: 'usd',
                      customerId:  'cus_QTs97BdvyjFSuh',
                    ),
                  );
            },
            isLoading: state is PaymentLoading ? true : false,
            text: 'Continue');
      },
    );
  }
}
