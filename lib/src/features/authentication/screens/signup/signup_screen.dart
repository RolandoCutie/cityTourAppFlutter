import 'package:codewithtea/src/common_widgets/form/form_header.dart';
import 'package:codewithtea/src/constants/colors.dart';
import 'package:codewithtea/src/constants/image_strings.dart';
import 'package:codewithtea/src/constants/sizes.dart';
import 'package:codewithtea/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'widgets/signUpFormWidgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                FormHeader(
                    image: tWelcomeScreenImage,
                    title: tSignup,
                    subTitle: tSignUpSubTitle),
                signUpFormWidget(),
                Column(
                  children: [
                    Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage(tGoogleLogoImage),
                          width: 20.0,
                        ),
                        label: Text(tSignInWithGoogle),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: tAlreadyHaveAnAccount,
                              style: Theme.of(context).textTheme.bodyText1),
                          TextSpan(
                            text: tLogin.toUpperCase(),
                          ),
                        ])))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
