import 'package:flutter/material.dart';
import 'package:login/src/auth/views/forgot_password.dart';
import 'package:login/src/constants/style_constants.dart';
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
                  label: 'Gmail',
                  onPressed: () {},
                  foregroundColor: AppColors.primary,
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.medium,
                ),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Forgot Password?'),
                  ),
                ),
              ),
              const SizedBox(height: 60.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomButton(
                  label: 'Log In!',
                  onPressed: () {},
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
}
