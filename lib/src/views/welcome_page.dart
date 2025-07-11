import 'package:flutter/material.dart';
import 'package:login/src/auth/views/auth_widget_tree.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(context) {
    //
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Lottie.asset('assets/lottie/welcome.json'),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AuthWidgetTree();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(width * 0.8, height * 0.1),
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                'Go to Login!',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
