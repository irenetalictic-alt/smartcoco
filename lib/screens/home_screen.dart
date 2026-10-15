import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import '../routes/app_routes.dart';
import '../widgets/app_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text(AppConstants.appTitle)),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                AppConstants.appTitle,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(AppConstants.appSubtitle, textAlign: TextAlign.center),
              ),
              const SizedBox(height: 24),
              AppButton(
                label: 'Open Login',
                onPressed: () => Navigator.pushNamed(context, AppRoutes.login),
              ),
            ],
          ),
        ),
      );
}
