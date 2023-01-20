import 'package:final_project/presentation/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../resources/assets_manager.dart';
import '../../resources/size_config.dart';
import '../../resources/strings_manager.dart';
import '../../widgets/social_card.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
            // Text("Register Account", style: headingStyle),
            const Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            const SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: ImageAssets.googleIcon,
                  press: () {},
                ),
                SocialCard(
                  icon: ImageAssets.facebookIcon,
                  press: () {},
                ),
                SocialCard(
                  icon: ImageAssets.twitterIcon,
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(
              AppStrings.agreeWithConditions,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ),
    );
  }
}
