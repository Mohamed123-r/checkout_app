import 'package:checkout_app/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_app/Features/checkout/data/repos/checkout_repo.dart';
import 'package:checkout_app/core/errors/failure.dart';
import 'package:checkout_app/core/stripe_service.dart';
import 'package:dartz/dartz.dart';

class CheckoutRepoImbl extends CheckoutRepo {
  final StripeService stripeService = StripeService();

  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);

      return right(null);
    } catch (e) {
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
