import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../data/network/api_auth_provider.dart';

import '../../models/token.dart';
import '../resources/routes_manager.dart';

class SignUpController extends GetxController {
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController contact = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController repassword = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final ApiAuthProvider apiAuthProvider = ApiAuthProvider();
  String checkPass = "";

  Token? token;
  // String? name;
  // String? email;
  // String? password;
  // String? contact;
  // String? conformPassword;
  List errors = [].obs;
  RxBool? remember = false.obs;
  RxBool isObscure = true.obs;
  void addError({String? error}) {
    if (!errors.contains(error)) {
      errors.add(error);
    }
  }

  changeObscure() {
    isObscure.value = !isObscure.value;
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      errors.remove(error);
    }
  }

  void registerUser(Map map) async {
    bool? success = await apiAuthProvider.signUp(map);

    if (success!) {
      Fluttertoast.showToast(
          msg: "Check your credentials",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          backgroundColor: Colors.blue[300],
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      Get.offAllNamed(Routes.signIn);
    }
  }

  void mapInputsLogin() {
    Map map = {
      "username": username.text,
      "password": password.text,
      "email": email.text
    };
    registerUser(map);
  }

  // void changeRememberValue(bool value) => remember!.value = value;
}
