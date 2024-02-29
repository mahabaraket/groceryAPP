import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/screens/auth/components/already_have_account.dart';
import 'package:grocery_app/screens/auth/components/signup_button.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/validators.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDefaults.margin),
      padding: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: AppDefaults.bxShadow,
        borderRadius: AppDefaults.borderRaduis,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Name"),
          const SizedBox(height: 8),
          TextFormField(
            validator: Validators.requiredWithFieldName('Name'),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: AppDefaults.padding),
          const Text("Phone Number"),
          const SizedBox(height: 8),
          TextFormField(
            textInputAction: TextInputAction.next,
            validator: Validators.required,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          const SizedBox(height: AppDefaults.padding),
          const Text("Password"),
          const SizedBox(height: 8),
          TextFormField(
            validator: Validators.required,
            textInputAction: TextInputAction.next,
            obscureText: true,
            decoration: InputDecoration(
              suffixIcon: Material(
                color: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppIcons.eye,
                    width: 24,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: AppDefaults.padding),
          const SignUpButton(),
          const AlreadyHaveAnAccount(),
          const SizedBox(height: AppDefaults.padding),
        ],
      ),
    );
  }
}
