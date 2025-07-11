import 'package:flutter/material.dart';
import 'package:login/src/constants/style_constants.dart';
import 'package:login/src/widgets/custom_button.dart';
import 'package:login/src/widgets/custom_text_form_field.dart';
import 'package:lottie/lottie.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppPadding.medium),
                  child: Text("Phil-IRI", style: AppTextStyles.headline1),
                ),
                Center(
                  child: Wrap(
                    children: [
                      Text('Forgot Password?', style: AppTextStyles.headline2),
                    ],
                  ),
                ),
                Text(
                  'Enter email account to reset password.',
                  style: AppTextStyles.bodyText,
                ),
                Lottie.asset('assets/lottie/email_sent.json'),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppHeight.medium,
                    vertical: AppHeight.small,
                  ),
                  child: CustomTextFormField(
                    hintText: 'Email',
                    prefixIcon: Icons.email,
                  ),
                ),
                SizedBox(height: height * 0.03),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppHeight.medium,
                    vertical: AppHeight.small,
                  ),
                  child: CustomButton(
                    label: "Continue",
                    onPressed: () {},
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.secondary,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppHeight.medium,
                    vertical: AppHeight.small,
                  ),
                  child: CustomButton(
                    label: "Cancel",
                    onPressed: () {},
                    backgroundColor: AppColors.secondary,
                    foregroundColor: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
