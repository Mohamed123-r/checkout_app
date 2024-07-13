import 'package:checkout_app/Features/checkout/data/models/Payment_intent_model.dart';
import 'package:checkout_app/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_app/core/api_keys.dart';
import 'package:checkout_app/core/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final ApiService apiService = ApiService();

  Future<PaymentIntentModel> createPaymentInt(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        contentType: Headers.contentTypeHeader,
        url: 'https://api.stripe.com/v1/payment_intents',
        data: paymentIntentInputModel.toJson(),
        token: ApiKeys.secretKey);

    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet({required String paymentIntelClientSecret}) async {
  await  Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Mohamed',
        paymentIntentClientSecret: paymentIntelClientSecret,
        style:  ThemeMode.light,
      ),
    );
  }

  Future displayPaymentSheet() async {

      await Stripe.instance.presentPaymentSheet();

  }

  makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentInt(paymentIntentInputModel);
    await initPaymentSheet(
        paymentIntelClientSecret: paymentIntentModel.clientSecret!);
    await displayPaymentSheet();
  }
}
