import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/src/auth/views/auth_widget_tree.dart';
import 'package:login/src/constants/style_constants.dart';
import 'package:login/src/widgets/custom_button.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (!didPop) {
            _confirmExit();
          }
        },
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Lottie.asset('assets/lottie/welcome.json'),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomButton(
                  label: 'Go to Login!',
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => AuthWidgetTree()),
                  ),
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.secondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _confirmExit() async {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final shouldExit = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return SizedBox(
          height: height * 0.50,
          width: width * 0.50,
          child: AlertDialog(
            title: Center(
              child: Text(
                'Do you really want to exit?',
                style: AppTextStyles.bodyText,
              ),
            ),
            actions: [
              OutlinedButton(
                onPressed: () {
                  return Navigator.pop(context, true);
                },
                child: Text('Yes'),
              ),
              OutlinedButton(
                onPressed: () {
                  return Navigator.pop(context, false);
                },
                child: Text('No'),
              ),
            ],
            elevation: 24.0,
          ),
        );
      },
    );

    if (shouldExit ?? false) {
      SystemNavigator.pop();
    }
  }
}
