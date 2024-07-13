part of 'payment_cubit.dart';

sealed class PaymentState {}

final class PaymentInitial extends PaymentState {}

final class PaymentSuccess extends PaymentState {}

final class PaymentFailure extends PaymentState {
  final String error;

  PaymentFailure({required this.error});
}

final class PaymentLoading extends PaymentState {}
