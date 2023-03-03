import 'package:codewithtea/src/constants/sizes.dart';
import 'package:codewithtea/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class signUpFormWidget extends StatelessWidget {
  const signUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tFullName),
                  prefixIcon: Icon(Icons.person_2_outlined)),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tEmail),
                  prefixIcon: Icon(Icons.person_2_outlined)),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tPhoneNo),
                  prefixIcon: Icon(Icons.person_2_outlined)),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tPassword),
                  prefixIcon: Icon(Icons.person_2_outlined)),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text(tSignup.toUpperCase())))
          ],
        ),
      ),
    );
  }
}
