import 'package:flutter/material.dart';
import 'package:login/src/constants/style_constants.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Are you sure?', style: AppTextStyles.bodyText),
      actions: [
        TextButton(
          onPressed: () {
            return Navigator.pop(context, true);
          },
          child: Text('Yes!'),
        ),
        TextButton(
          onPressed: () {
            return Navigator.pop(context, false);
          },
          child: Text('No!'),
        ),
      ],
    );
  }
}
