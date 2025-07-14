import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/src/auth/views/login_page.dart';
import 'package:login/src/auth/views/sign_up_page.dart';
import 'package:login/src/constants/style_constants.dart';
import 'package:login/src/widgets/custom_alert_dialog.dart';

List<Widget> pages = [const LoginPage(), const SignupPage()];

class AuthWidgetTree extends StatefulWidget {
  const AuthWidgetTree({super.key});

  @override
  State<AuthWidgetTree> createState() => AuthWidgetTreeState();
}

class AuthWidgetTreeState extends State<AuthWidgetTree> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: PopScope(
              canPop: false,
              onPopInvokedWithResult: (didPop, result) {
                if (!didPop) {
                  _confirmExit();
                }
              },
              child: AppBar(
                toolbarHeight: 150,
                bottom: const TabBar(
                  labelColor: Colors.teal,
                  labelStyle: TextStyle(color: Colors.white),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.white,
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.teal, width: 2.5),
                    ),
                  ),
                  tabs: [
                    Tab(text: 'Sign In'),
                    Tab(text: 'Sign Up'),
                  ],
                ),
                title: const Center(
                  child: Column(
                    children: [
                      Text(style: AppTextStyles.headline1, 'PhilIRI'),
                      Text(
                        style: AppTextStyles.headline2,
                        'Welcome to PhilIRI',
                      ),
                      Text(
                        style: AppTextStyles.bodyText,
                        'Register or Login bellow to manage',
                      ),
                      Text(style: AppTextStyles.bodyText, 'your assessments.'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: pages.elementAt(0)),
              Center(child: pages.elementAt(1)),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _confirmExit() async {
    final shouldExit = await showDialog<bool>(
      context: context,
      builder: (context) {
        return CustomAlertDialog();
      },
    );
    if (shouldExit ?? false) {
      SystemNavigator.pop();
    }
  }
}
