import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class SignUpHearder extends StatelessWidget {
  const SignUpHearder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: Text(
          'Welcome to our \n grocery shop',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
