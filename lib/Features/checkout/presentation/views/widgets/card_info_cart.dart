import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardInfoCart extends StatelessWidget {
  const CardInfoCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: SvgPicture.asset('assets/images/logo.svg'),
        title: const Text('Credit Card' ,
          style: Styles.style18,),
        subtitle:  Text('Mastercard **78',
            style: Styles.style18.copyWith(
              color: Colors.black45,
            )),
      ),
    );
  }
}
