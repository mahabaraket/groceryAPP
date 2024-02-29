import 'package:flutter/material.dart';
import 'package:grocery_app/core/routes/app_routes.dart';
import '../components/app_black.dart';
import '../components/network_image.dart';

import '../constants/constants.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const AppBackButton(),
          title: const Text('Unknown Page'),
        ),
        body: Column(
          children: [
            const Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: const AspectRatio(
                aspectRatio: 1 / 1,
                child: NetworkImageWithLoader(
                  'https://i.imgur.com/mVeoFh5.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Column(
                children: [
                  Text(
                    'oppss!! something wrong',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: AppDefaults.padding),
                    child: Text(
                      'Sorry, something went wrong\nplease try again .',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(AppDefaults.padding * 2),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.entryPoint);
                  },
                  child: const Text('Try Again'),
                ),
              ),
            ),
            const Spacer(),
          ],
        ));
  }
}
