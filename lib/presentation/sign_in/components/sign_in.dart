import 'dart:developer';

import 'package:final_project/presentation/resources/assets_manager.dart';
import 'package:final_project/presentation/resources/color_manager.dart';
import 'package:final_project/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/routes_manager.dart';
import '../../resources/size_config.dart';
import '../../widgets/social_card.dart';
import '../sign_in_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final SignInController _signInController = Get.put(SignInController());

  // bool _isObscure = true;
  String passBackData = "";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorManager.KSecondaryColor,
      body: SingleChildScrollView(
        child: Form(
          key: _signInController.formKey,
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
                  controller: _signInController.username,
                  // onSaved: (newValue) => _signInController.name = newValue,
                  // onChanged: (value) {
                  //   if (value.isNotEmpty) {
                  //     _signInController.removeError(
                  //         error: AppStrings.kNameNullError);
                  //   }
                  //   return;
                  // },
                  validator: (value) {
                    if (value!.isEmpty) {
                      // _signInController.addError(
                      //     error: AppStrings.kEmailNullError);
                      // return AppStrings.emptyString;
                      return 'Please enter some text';
                    }
                    return null;
                  },
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
                  child: Obx(
                    () => TextFormField(
                        controller: _signInController.password,
                        obscureText: _signInController.isObscure.value,
                        // onSaved: ((newValue) =>
                        //     _signInController. = newValue),
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            _signInController.removeError(
                                error: AppStrings.kPassNullError);
                          } else if (value.length >= 6) {
                            _signInController.removeError(
                                error: AppStrings.kShortPassError);
                          }
                          return;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter password';
                            //   _signInController.addError(
                            //       error: AppStrings.kPassNullError);
                            //   return "";
                            // } else if (value.length < 6) {
                            //   _signInController.addError(
                            //       error: AppStrings.kShortPassError);
                            //   return "";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: AppStrings.password,
                          hintText: AppStrings.enterPassword,
                          suffixIcon: IconButton(
                            icon: Icon(!_signInController.isObscure.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              _signInController.changeObscure();
                            },
                          ),
                        )),
                  )),

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
                child: GestureDetector(
                  child: TextButton(
                    onPressed: () {
                      //  Navigator.pushNamed(context, Routes.mainPage);
                      if (_signInController.formKey.currentState!.validate()) {
                        log("ssdk");
                        _signInController.mapInputsLogin();
                      }
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
      ),
    );
  }
}
