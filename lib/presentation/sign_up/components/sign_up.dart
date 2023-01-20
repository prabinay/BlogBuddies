import 'package:final_project/presentation/resources/color_manager.dart';
import 'package:final_project/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../resources/routes_manager.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isObscure = true;
  String passBackData = "";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
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
                child: Container(
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

            const Padding(
              // padding: const EdgeInsets.only(
              //     left: 15.0, right: 15.0, top: 20, bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: AppStrings.userName,
                  hintText: AppStrings.nameHint,
                  prefixIcon: Icon(Icons.people),
                ),
              ),
            ),

            const Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 20, bottom: 0),
              // padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: AppStrings.email,
                  hintText: AppStrings.userEmail,
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 20, bottom: 0),
              // padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: AppStrings.userPhone,
                  hintText: AppStrings.phonHint,
                  prefixIcon: Icon(Icons.phone_android),
                ),
              ),
            ),

            Padding(
                padding: EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: AppStrings.password,
                      hintText: AppStrings.enterPassword,
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      )),
                )),

            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: AppStrings.confirmPassword,
                    hintText: AppStrings.reenterYourPassword,
                    prefixIcon: Icon(Icons.password_sharp),
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                )),

            Container(
              margin: const EdgeInsets.only(top: 50),
              height: 35,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: const Text(
                AppStrings.signUp,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            // ),
            const SizedBox(
              height: 20,
            ),

            Center(
              child: OutlinedButton(
                  onPressed: () async {
                    passBackData =
                    await Navigator.pushNamed(context, Routes.initialScreenRoute)
                    as String;
                  },
                  child: const Text(AppStrings.alreadyMember)),
            ),
            
          ],
        ),
      ),
    );
  }
}
