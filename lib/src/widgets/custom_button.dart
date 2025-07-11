import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.svg,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
  });
  final Color? backgroundColor;
  final Color? foregroundColor;
  final String? svg;
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        surfaceTintColor: Colors.white,
        minimumSize: const Size.fromHeight(60.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SvgPicture.asset(svg, height: 20, width: 20),
          const SizedBox(width: 5.0),
          Text(label),
        ],
      ),
    );
  }
}
