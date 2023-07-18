import 'package:flutter/material.dart';
import 'package:on_time/Modules/Layout/Layout.dart';
import 'package:on_time/auth_presentation/resources/string_manager.dart';

import '../../Modules/auth_screens/Create_Profile/createProfileView.dart';
import '../../Modules/auth_screens/Login_screen/LoginView.dart';
import '../../Modules/auth_screens/Register_Screen/Register.dart';
import '../../Modules/auth_screens/choose_email/EmailOptionView.dart';
import '../../Modules/auth_screens/choose_phone/PhoneOptionNum2.dart';
import '../../Modules/auth_screens/choose_phone/PhoneOptionView.dart';
import '../../Modules/auth_screens/forget_password_screen/forgotPasswordView.dart';
import '../../Modules/auth_screens/onboarding_screen/OnboardingView.dart';
import '../../Modules/auth_screens/splash_screen/SplashView.dart';


class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String onboardingRoute = "/onBoarding";
  static const String forgotPassword = "/forgotPassword";
  static const String chooseEmail = "/chooseEmail";
  static const String choosePhone = "/choosePhone";
  static const String createProfile = "/createProfile";
  static const String choosePhoneNum2 = "/choosePhoneNum2";
  static const String layout = "/layout";

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) =>  LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) =>  RegisterView());
      case Routes.forgotPassword:
        return MaterialPageRoute(builder: (_) =>  ForgotPasswordView());
      case Routes.chooseEmail:
        return MaterialPageRoute(builder: (_) =>  EmailOptionView());
      case Routes.choosePhone:
        return MaterialPageRoute(builder: (_) =>  PhoneOptionView());
      case Routes.createProfile:
        return MaterialPageRoute(builder: (_) =>   CreateProfileView());
      case Routes.choosePhoneNum2:
        return MaterialPageRoute(builder: (_) =>   PhoneOptionNum2View());
      case Routes.layout:
        return MaterialPageRoute(builder: (_) =>   const Layout());
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
      ),
    );
  }
}
