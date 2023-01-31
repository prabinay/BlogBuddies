import 'package:final_project/presentation/resources/color_manager.dart';
import 'package:final_project/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/routes_manager.dart';
import '../sign_up_controller.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // bool _isObscure = true;
  String passBackData = "";

  final SignUpController _signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _signUpController.formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: SizedBox(
                    // width: 250,
                    height: 50,
                    /*decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50.0)),*/
                    child: Text(
                      AppStrings.signUp,
                      // textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 33,
                        color: ColorManager.KTextColor,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 20),
                // padding: EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: SizedBox(
                    // width: 250,
                    height: 50,
                    child: Text(
                      AppStrings.introScreenText1,
                      // textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: ColorManager.KTextColor,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                // padding: const EdgeInsets.only(
                //     left: 15.0, right: 15.0, top: 20, bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _signUpController.username,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: AppStrings.userName,
                        hintText: AppStrings.nameHint,
                        prefixIcon: Icon(Icons.people),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 20, bottom: 0),
                // padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: _signUpController.email,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: AppStrings.email,
                    hintText: AppStrings.userEmail,
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    } else if (!value.isValidEmail()) {
                      return 'Please enter valid email address';
                    }
                    return null;
                  },
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.only(
              //       left: 15.0, right: 15.0, top: 20, bottom: 0),
              //   // padding: EdgeInsets.symmetric(horizontal: 15),
              //   child: TextFormField(
              //     controller: _signUpController.contact,
              //     decoration: const InputDecoration(
              //       border: OutlineInputBorder(),
              //       labelText: AppStrings.userPhone,
              //       hintText: AppStrings.phonHint,
              //       prefixIcon: Icon(Icons.phone_android),
              //     ),
              //     // validator: validateMobile,
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: Obx(
                  () => TextFormField(
                    controller: _signUpController.password,
                    obscureText: _signUpController.isObscure.value,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: AppStrings.password,
                      hintText: AppStrings.enterPassword,
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon: Icon(_signUpController.isObscure.value
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          _signUpController.changeObscure();
                        },
                      ),
                    ),
                    validator: (value) {
                      _signUpController.checkPass = value!;
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                  ),
                ),
              ),

              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Obx(
                    () => TextFormField(
                      controller: _signUpController.repassword,
                      obscureText: _signUpController.isObscure.value,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: AppStrings.confirmPassword,
                        hintText: AppStrings.reenterYourPassword,
                        prefixIcon: const Icon(Icons.password_sharp),
                        suffixIcon: IconButton(
                          icon: Icon(_signUpController.isObscure.value
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            _signUpController.changeObscure();
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        } else if (_signUpController.checkPass != value) {
                          return "Password not match";
                        }
                        return null;
                      },
                    ),
                  )),

              Container(
                margin: const EdgeInsets.only(top: 50),
                height: 35,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: GestureDetector(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_signUpController.formKey.currentState!.validate()) {
                        // log("ssdk");
                        _signUpController.mapInputsLogin();
                      }
                    },
                    child: const Text(
                      AppStrings.signUp,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),
              // ),
              const SizedBox(
                height: 20,
              ),

              Center(
                child: GestureDetector(
                    // onPressed: () async {
                    //   passBackData = await Navigator.pushNamed(
                    //       context, Routes.initialScreenRoute) as String;
                    // },
                    onTap: () {
                      Navigator.pushNamed(context, Routes.signIn);
                    },
                    child: const Text(AppStrings.alreadyMember)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String? validateMobile(String value) {
// Indian Mobile number are of 10 digit only
  if (value.length != 10)
    return 'Mobile Number must be of 10 digit';
  else {
    return null;
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension ContactValidator on String {
  bool isValidContact(String? value) {
    return RegExp(
            r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)')
        .hasMatch(value ?? '');
  }
}
