import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.onTap,
  });

  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.outer,
            color: Colors.grey.shade300,
            blurRadius: 3,
          ),
        ],
      ),
      child: TextFormField(
        onTap: onTap,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: Icon(suffixIcon),
          fillColor: Colors.white70,
          filled: true,
          focusColor: Colors.white70,
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
