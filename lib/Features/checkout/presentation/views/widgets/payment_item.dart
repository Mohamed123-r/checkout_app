import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, this.isActive = false, required this.image});

  final bool isActive;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 65,
      width: 105,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: isActive
              ? const BorderSide(color: Color(0xff34A853), width: 1)
              : BorderSide(color: Colors.black.withOpacity(0.5), width: 1),
        ),
        shadows: [
          isActive
              ? const BoxShadow(
                  color: Color(0xff34A853),
                  offset: Offset(0, 0),
                  blurRadius: 4,
                )
              : const BoxShadow(),
        ],
      ),
      duration: const Duration(milliseconds: 300),
      child: Center(
        child: SvgPicture.asset(image),
      ),
    );
  }
}
