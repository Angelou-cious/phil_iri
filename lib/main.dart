import 'package:flutter/material.dart';
import 'package:login/src/auth/views/auth_widget_tree.dart';
import 'package:login/src/views/welcome_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.light,
        ),
      ),
      home: const WelcomePage(),
      // home: const AuthWidgetTree(),
    ),
  );
}
