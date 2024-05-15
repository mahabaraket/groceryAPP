import 'package:flutter/material.dart';
import 'package:grocery_app/core/components/app_black.dart';

class BundleDetailsPage extends StatelessWidget {
  const BundleDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Bundle Details Page'),
      ),
    );
  }
}
