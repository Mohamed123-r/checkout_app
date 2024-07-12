import 'package:checkout_app/Features/checkout/data/models/Payment_intent_model.dart';
import 'package:checkout_app/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_app/core/api_keys.dart';
import 'package:checkout_app/core/api_service.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final ApiService apiService = ApiService();

  Future<PaymentIntentModel> createPaymentInt(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        url: 'https://api.stripe.com/v1/payment_intents',
        data: paymentIntentInputModel.toJson(),
        token: ApiKeys.secretKey);

    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }
}

Future initPaymentServer({required String paymentIntelClientSecret}) async {
  Stripe.instance.initPaymentSheet(
    paymentSheetParameters: SetupPaymentSheetParameters(
      merchantDisplayName: 'Mohamed',
      paymentIntentClientSecret: paymentIntelClientSecret,
    ),
  );
}

Future displayPaymentSheet(
    {required String paymentIntelClientSecret}) async {
  try {
    await Stripe.instance.presentPaymentSheet();
  } on Exception catch (e) {
    if (e is StripeException) {
      print("Error from Stripe: ${e.error.localizedMessage}");
    } else {
      print("Unforeseen error: ${e}");
    }
  } catch (e) {
    print("Exception: $e");
  }
}
