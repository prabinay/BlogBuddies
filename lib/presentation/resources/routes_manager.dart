import 'package:final_project/presentation/home/home_page.dart';
import 'package:final_project/presentation/home/post_details.dart';
import 'package:final_project/presentation/resources/strings_manager.dart';
import 'package:final_project/presentation/sign_in/components/sign_in.dart';

import 'package:flutter/material.dart';

import '../main_page/main_page.dart';
import '../sign_up/components/sign_up.dart';

class Routes {
  static const String initialScreenRoute = "/";
  static const String signIn = "/signIn";
  static const String signUp = "/signUp";
  static const String completeProfileScreen = "/completeProfileScreen";
  static const String loginSuccessScreen = "/loginSuccessScreen";
  static const String home = "/home";
  static const String detailScreen = "/detailScreen";
  static const String profileScreen = "/profileScreen";
  static const String cart = "/cart";
  static const String homePage = "/homePage";
  static const String mainPage = "/mainPage";
  static const String detailsPage = "/detailsPage";
}

class RouteGenerator {
  static Route<dynamic> getRoute(
    RouteSettings routeSettings,
  ) {
    switch (routeSettings.name) {
      case Routes.initialScreenRoute:
        return MaterialPageRoute(builder: (_) =>  LoginPage());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
      case Routes.mainPage:
        return MaterialPageRoute(builder: (_) => const MainPage());
        case Routes.detailsPage:
        return MaterialPageRoute(builder: (_) => const PostDetails());
      // case Routes.completeProfileScreen:
      //   return MaterialPageRoute(builder: (_) => const CompleteProfileScreen());
      // case Routes.loginSuccessScreen:
      //   return MaterialPageRoute(builder: (_) => const LoginSuccessScreen());
      // case Routes.home:
      // return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
