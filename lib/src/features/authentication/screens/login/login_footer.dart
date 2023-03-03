import 'package:codewithtea/src/constants/image_strings.dart';
import 'package:codewithtea/src/constants/sizes.dart';
import 'package:codewithtea/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("OR"),
        SizedBox(
          height: tFormHeight - 20,
        ),
        SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              icon: Image(
                image: AssetImage(tGoogleLogoImage),
                width: 20.0,
              ),
              label: Text(tSignInWithGoogle),
              onPressed: () {},
            )),
        SizedBox(
          height: tFormHeight - 20,
        ),
        TextButton(
            onPressed: () {
              Get.offAll(() => SignUpScreen());
            },
            child: Text.rich(TextSpan(
                text: tAlreadyHaveAnAccount,
                style: Theme.of(context).textTheme.bodyLarge,
                children: [
                  TextSpan(text: tSignup, style: TextStyle(color: Colors.blue))
                ])))
      ],
    );
  }
}
