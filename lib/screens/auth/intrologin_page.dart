import 'package:flutter/material.dart';
import 'package:grocery_app/screens/auth/components/intro_pagebody_area.dart';
import 'package:grocery_app/screens/auth/components/intropage_bgwrapp.dart';

import '../../core/constants/constants.dart';

class IntroLoginPage extends StatelessWidget {
  const IntroLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          IntroLoginBackgroundWrapper(imageURL: AppImages.introBackground1),
          IntroPageBodyArea(),
        ],
      ),
    );
  }
}
