import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/styles.dart';

AppBar buildAppBar({required String title}) {
  return AppBar(
    centerTitle: true,
    title:  Text(
      title,
      style: Styles.style25,
    ),
    leading: Center(
      child: SvgPicture.asset(
        'assets/images/Arrow.svg',
      ),
    ),
  );
}