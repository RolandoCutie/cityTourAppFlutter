import 'package:codewithtea/src/constants/image_strings.dart';
import 'package:codewithtea/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Hero(
          tag: "heroImage",
          child: Image(
            image: AssetImage(tWelcomeScreenImage),
            height: size.height * 0.2,
          )),
      Text(
        tLoginTitle,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      Text(
        tLoginSubTitle,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ]);
  }
}
