import 'package:flutter/material.dart';
import 'package:grocery_app/core/routes/app_routes.dart';
import 'package:grocery_app/core/routes/on_geerate_route.dart';
import 'package:grocery_app/core/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery APP',
      theme: AppTheme.defaultTheme,
      onGenerateRoute: RouteGenerator.onGenerate,
      initialRoute: AppRoutes.onboarding,
    );
  }
}
