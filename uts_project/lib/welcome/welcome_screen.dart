import 'package:flutter/material.dart';
import '../screens/constants.dart';
import '../signinOrSignUp/signin_or_signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Spacer(flex: 2),
          Image.asset("images/Jejayy.png"),
          Spacer(flex: 3),
          Text(
            "Welcome To Our JeJay \nMessaging App",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
              "Freedom Talk Any Person Of Your \nMother Language",
              textAlign: TextAlign.center,
              style: TextStyle(color: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .color!
                  .withOpacity(0.64),
              ),
          ),
          Spacer(flex: 3),
          FittedBox(
            child: TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SigninOrSignupScreen(),
                    ),
                   ),
                child: Row(
                  children: [Text(
                    "Skip",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color!
                            .withOpacity(0.8)),
                   ),
                    SizedBox(width: kDefaultPadding / 4),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color!
                            .withOpacity(0.8),
                    )
                  ],
                )),
          )
        ],
       ),
      ),
    );
  }
}