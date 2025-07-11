import 'package:flutter/material.dart';
import 'package:login/src/auth/views/login_page.dart';
import 'package:login/src/auth/views/sign_up_page.dart';

List<Widget> pages = [const LoginPage(), const SignupPage()];

class AuthWidgetTree extends StatefulWidget {
  const AuthWidgetTree({super.key});

  @override
  State<AuthWidgetTree> createState() => AuthWidgetTreeState();
}

class AuthWidgetTreeState extends State<AuthWidgetTree> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(200),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(style: TextStyle(fontSize: 50), 'PhilIRI'),
                      Text(
                        style: TextStyle(fontSize: 30),
                        'Welcome to PhilIRI',
                      ),
                      Text(
                        style: TextStyle(fontSize: 15),
                        'Register or Login bellow to manage your assessments.',
                      ),
                    ],
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
      ),
    );
  }
}
