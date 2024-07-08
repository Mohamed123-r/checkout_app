import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/styles.dart';

AppBar buildAppBar({ String? title ,void Function()? onTap} ) {
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title:  Text(
      title?? '',
      style: Styles.style25,
    ),
    leading: GestureDetector(
      onTap: onTap ,
      child: Center(
        child: SvgPicture.asset(
          'assets/images/Arrow.svg',
        ),
      ),
    ),
  );
}