import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
  const Validation({super.key, required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(widget.icon),
        const SizedBox(width: 15),
        Text(widget.label),
      ],
    );
  }
}
