import 'package:final_project/presentation/resources/assets_manager.dart';
import 'package:final_project/presentation/resources/color_manager.dart';
import 'package:final_project/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';

import '../../resources/routes_manager.dart';
import '../../resources/size_config.dart';
import '../../widgets/social_card.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  String passBackData = "";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorManager.KSecondaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: Center(
                child: SizedBox(
                  width: 200,
                  height: 150,
                  /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                ),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: AppStrings.email,
                    hintText: AppStrings.enterEmail),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: AppStrings.password,
                      hintText: AppStrings.enterPassword,
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ))),

            const Text(
              AppStrings.forgotPass,
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),

            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: ColorManager.KPrimaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: OutlinedButton(
                  onPressed: ()  {
                   
                         Navigator.pushNamed(context, Routes.mainPage);
                         
                  },
                  child: const Text(
                    AppStrings.logIn,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            // ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 50,
              child: const Text(
                AppStrings.or,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),

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
            Center(
              child: OutlinedButton(
                  onPressed: () async {
                    passBackData =
                        await Navigator.pushNamed(context, Routes.signUp)
                            as String;
                  },
                  child: const Text(AppStrings.noAccount)),
            ),
          ],
        ),
      ),
    );
  }
}
