import 'package:flutter/material.dart';
import 'package:grocery_app/screens/auth/components/signup_form.dart';
import 'package:grocery_app/screens/auth/components/signup_page_header.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_default.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldWithBoxBg,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SignUpHearder(),
                SizedBox(height: AppDefaults.padding),
                SignUpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
