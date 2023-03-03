import 'package:codewithtea/src/constants/image_strings.dart';
import 'package:codewithtea/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

//TODO:ESTO ES UN WIDGET QUE LO VAMOS A USAR EN DIFERENTES VISTAS
class FormHeader extends StatelessWidget {
  const FormHeader({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Hero(
          tag: "heroImage",
          child: Image(
            image: AssetImage(image),
            height: size.height * 0.2,
          )),
      Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      Text(
        subTitle,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ]);
  }
}
