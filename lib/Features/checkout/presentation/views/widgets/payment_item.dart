import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, required this.isSelected, required this.image});

  final bool isSelected;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 105,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: isSelected
              ? const BorderSide(color: Color(0xff34A853), width: 1)
              : BorderSide(color: Colors.black.withOpacity(0.5), width: 1),
        ),
        shadows:  [isSelected ?
          const BoxShadow(
            color: Color(0xff34A853),
            offset: Offset(0, 0),
            blurRadius: 4,
          ): const BoxShadow(
            
          ),
        ],
      ),
      child: Center(
        child: SvgPicture.asset(image),
      ),
    );
  }
}
