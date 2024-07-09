// import 'package:flutter/material.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';
//
//
// class CustomCreditCard extends StatefulWidget {
//   const CustomCreditCard({super.key, required this.formKey, required this.autovalidateMode});
//  final GlobalKey<FormState> formKey ;
//
//  final AutovalidateMode autovalidateMode ;
//   @override
//   State<CustomCreditCard> createState() => _CustomCreditCardState();
// }
//
// class _CustomCreditCardState extends State<CustomCreditCard> {
//   String cardNumber = '';
//   String expiryDate = '';
//   String cardHolderName = '';
//   String cvvCode = '';
//
//   bool showBackView = false;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const SizedBox(
//           height: 34,
//         ),
//         CreditCardWidget(
//             padding: 0,
//             cardNumber: cardNumber,
//             expiryDate: expiryDate,
//             cardHolderName: cardHolderName,
//             cvvCode: cvvCode,
//             showBackView: showBackView,
//             isHolderNameVisible: true,
//             onCreditCardWidgetChange: (value) {}),
//         CreditCardForm(
//           autovalidateMode: widget.autovalidateMode,
//             cardNumber: cardNumber,
//             expiryDate: expiryDate,
//             cardHolderName: cardHolderName,
//             cvvCode: cvvCode,
//             onCreditCardModelChange: (value) {
//               cardNumber = value.cardNumber;
//               expiryDate = value.expiryDate;
//               cardHolderName = value.cardHolderName;
//               cvvCode = value.cvvCode;
//               showBackView = value.isCvvFocused;
//               setState(() {});
//             },
//             formKey: widget.formKey),
//       ],
//     );
//   }
// }
