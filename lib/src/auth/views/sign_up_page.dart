import 'package:flutter/material.dart';
import 'package:login/src/widgets/custom_text_form_field.dart';
import 'package:login/src/widgets/validation.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isObscure = false;
  bool checkTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 35.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextFormField(
                  hintText: 'Your Name',
                  prefixIcon: Icons.person,
                ),
              ),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextFormField(
                  hintText: 'Your Email',
                  prefixIcon: Icons.email,
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextFormField(
                  hintText: 'Your Password',
                  prefixIcon: Icons.lock,
                  suffixIcon: isObscure
                      ? Icons.remove_red_eye
                      : Icons.remove_red_eye_outlined,
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextFormField(
                  hintText: 'Confirm Password',
                  prefixIcon: Icons.lock,
                  suffixIcon: isObscure
                      ? Icons.remove_red_eye
                      : Icons.remove_red_eye_outlined,
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Validation(
                  label: 'At least 8 Characters.',
                  icon: Icons.check_box_outline_blank,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Validation(
                  label: 'At least 1 number.',
                  icon: Icons.check_box_outline_blank,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Validation(
                  label: 'At least 1 uppercase.',
                  icon: Icons.check_box_outline_blank,
                ),
              ),
              const SizedBox(height: 30.0),
              CheckboxListTile(
                value: checkTerms,
                onChanged: (bool? value) {
                  setState(() {
                    checkTerms = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text(
                  style: TextStyle(fontSize: 13.0),
                  textAlign: TextAlign.justify,
                  "By agreeing to the terms and condition, you are entering into legality binding contract with the service provider.",
                ),
              ),
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
                  child: const Text('Sign Up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
