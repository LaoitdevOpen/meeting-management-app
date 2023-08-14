import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// All states in sign_up_form
class SignUpFormState {
  final signUpFormKey = GlobalKey<FormState>();
  late String signUpCompanyName;
  late String signUpEmail;
  late String signUpPassword;
  late String signUpConfirmPassword;
  bool isPasswordVisible = false;

  void setCompanyName(String value) {
    signUpCompanyName = value;
  }

  void setSignUpEmail(String value) {
    signUpEmail = value;
  }

  void setSignUpPassword(String value) {
    signUpPassword = value;
  }

  void setsignUpConfirmPassword(String value) {
    signUpConfirmPassword = value;
  }

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
  }
}

// All states in sign_in_form
class SignInFormState {
  final signInFormKey = GlobalKey<FormState>();
  late SharedPreferences sharedPreferences;
  late String signInEmail;
  late String signInPassword;
  bool rememberMe = false;
  bool isPasswordVisible = false;
  bool get getRememberMe => rememberMe;
  GlobalKey<FormState> get getSignInFormKey => signInFormKey;

  SignInFormState(this.sharedPreferences);

  void setSignInEmail(String value) {
    signInEmail = value;
  }

  void setSignInPassword(String value) {
    signInPassword = value;
  }

  void toggleRememberMe(bool value) {
    if (value) {
      sharedPreferences.setString('email', signInEmail);
      sharedPreferences.setString('password', signInPassword);
    } else {
      sharedPreferences.remove('email');
      sharedPreferences.remove('password');
    }
    rememberMe = value;
    sharedPreferences.setBool('remember_me', value);
  }

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
  }
}

// All states in forget_pasword_form

class ForgetPasswordFormState {
  final forgetPasswordFormKey = GlobalKey<FormState>();
  late String forgetPasswordEmail;

  void setForgetPassword(String value) {
    forgetPasswordEmail = value;
  }
}

// All states in change_password_form

class ChangePasswordFormState {
  final changePasswordFormkey = GlobalKey<FormState>();
  late String userEmail;
  late String confirmCode;
  late String newPassword;
  late String newConfirmPassword;

  bool isPasswordVisible = false;

  void setUserEamil(String value) {
    userEmail = value;
  }

  void setConfirmCode(String value) {
    confirmCode = value;
  }

  void setNewPassword(String value) {
    newPassword = value;
  }

  void setNewConfirmPassword(String value) {
    newConfirmPassword = value;
  }

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
  }
}
