import 'package:dr_app/core/helpers/extension.dart';
import 'package:dr_app/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class TextLogin extends StatelessWidget {
  const TextLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        context.pushReplacementNamed(Routes.registerScreen);
      },
      child: RichText(
        text: TextSpan(
          text: "Already have an account yet? ",
          style: AppStyles.regular13gray,
          children: [
            TextSpan(
              text: "Sign Up",
              style: AppStyles.regular14blue,

            )
          ],
        ),
      ),
    );
  }
}
