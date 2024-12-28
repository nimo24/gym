import 'package:flutter/material.dart';
import 'package:projet/screens/login_screen.dart';
import 'package:projet/screens/signup_screen.dart';
import 'package:projet/widgets/custom_scaffold.dart';
import 'package:projet/widgets/welcom_button.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: 'Welcome Here!\n',
                                style: TextStyle(
                                  fontSize: 45.0,
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text:
                                    '\n With this app make dream body come true',
                                style: TextStyle(
                                  fontSize: 20,
                                ))
                          ],
                        ))),
              )),
          const Flexible(
              flex: 2,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    Expanded(
                      child: WelcomButton(
                        buttonText: 'Log in',
                        onTap: LoginScreen(),
                        color: Colors.transparent,
                        textColor: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: WelcomButton(
                        buttonText: 'Sign up',
                        onTap: SignupScreen(),
                        color: Colors.white, //white
                        textColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
