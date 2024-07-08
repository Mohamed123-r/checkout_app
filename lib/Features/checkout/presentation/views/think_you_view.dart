import 'package:checkout_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/think_you_view_body.dart';

class ThinkYouView extends StatelessWidget {
  const ThinkYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: Transform.translate(
          offset: const Offset(0, -16), child: const ThinkYouViewBody()),
    );
  }
}
