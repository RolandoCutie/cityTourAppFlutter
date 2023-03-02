import 'package:codewithtea/src/constants/sizes.dart';
import 'package:codewithtea/src/features/authentication/screens/login/login_footer.dart';
import 'package:codewithtea/src/features/authentication/screens/login/login_form.dart';
import 'package:codewithtea/src/features/authentication/screens/login/login_header.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginHeader(size: size),
              LoginForm(),
              LoginFooterWidget(),
            ],
          ),
        ),
      ),
    ));
  }
}


