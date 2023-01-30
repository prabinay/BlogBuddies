import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
 
// import '../../data/local/shared_preferences/shared_preferences_manager.dart';
import '../../data/network/api_auth_provider.dart';
import '../../models/token.dart';
 
import '../resources/routes_manager.dart';

class SignInController extends GetxController {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final ApiAuthProvider apiAuthProvider = ApiAuthProvider();
  // final SharedPreferencesManager sharedPreferencesManager =
  //     SharedPreferencesManager();
  Token? token;
  // String? name;
  // String? password;
  List errors = [].obs;
  RxBool? remember = false.obs;
    RxBool isObscure = true.obs;
  void addError({String? error}) {
    if (!errors.contains(error)) {
      errors.add(error);
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      errors.remove(error);
    }
  }

  changeObscure() {
    isObscure.value = !isObscure.value;
  }

  void loginUser(Map map) async {
    log("$map");
    // setState(ViewState.busy);
    token = await apiAuthProvider.login(map);

    if (token == null) {
      Fluttertoast.showToast(
          msg: "Check your credentials",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          backgroundColor: Colors.blue[300],
          textColor: Colors.white,
          fontSize: 16.0);
      // setState(ViewState.error);
    } else {
      // await sharedPreferencesManager.putAccessToken(token!.accessToken);
      log("access token ${token!.username}");

      // await sharedPreferencesManager.putBool(
      //     SharedPreferenc
      //
      //
      //esManager.keyIsLogin, true);

      Get.offAllNamed(Routes.mainPage);

      // setState(ViewState.retrieved);
    }
  }

  void mapInputsLogin() {
    Map map = {"username": username.text, "password": password.text};
    loginUser(map);
  }

  // void changeRememberValue(bool value) => remember!.value = value;
}
