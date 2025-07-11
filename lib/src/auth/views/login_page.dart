import 'package:flutter/material.dart';
import 'package:login/src/widgets/custom_button.dart';
import 'package:login/src/widgets/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomButton(
                  label: 'Email',
                  svg: 'assets/svg/google.svg',
                  onPressed: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('or continue with email'),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: CustomTextFormField(
                  hintText: 'Email',
                  prefixIcon: Icons.email,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: CustomTextFormField(
                  hintText: 'Password',
                  prefixIcon: Icons.lock,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text('Forgot Password?', textAlign: TextAlign.left),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.teal,
                    surfaceTintColor: Colors.teal,
                    minimumSize: const Size.fromHeight(60.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text('Log In'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
