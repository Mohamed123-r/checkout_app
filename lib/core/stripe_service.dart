import 'package:checkout_app/Features/checkout/data/models/Ephemeral_keys.dart';
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

  Future<EphemeralKeys> createEphemeralKey({required String customerId}) async {
    var response = await apiService.post(
        contentType: Headers.contentTypeHeader,
        url: 'https://api.stripe.com/v1/ephemeral_keys',
        data: {
          'customer': customerId,
        },
        token: ApiKeys.secretKey,
        headers: {
          'Authorization': 'Bearer ${ApiKeys.secretKey}',
          'Stripe-Version': '2020-08-27',
        });

    var ephemeralKeys = EphemeralKeys.fromJson(response.data);
    return ephemeralKeys;
  }

  Future initPaymentSheet(
      {required String paymentIntelClientSecret,
      required String customerEphemeralKeySecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Mohamed',
        customerEphemeralKeySecret: customerEphemeralKeySecret,
        customerId: 'cus_QTs97BdvyjFSuh',
        paymentIntentClientSecret: paymentIntelClientSecret,
        style: ThemeMode.light,
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentInt(paymentIntentInputModel);
    var ephemeralKeys = await createEphemeralKey(
        customerId: paymentIntentInputModel.customerId);
    await initPaymentSheet(
        paymentIntelClientSecret: paymentIntentModel.clientSecret!,
        customerEphemeralKeySecret: ephemeralKeys.secret!);
    await displayPaymentSheet();
  }
}
