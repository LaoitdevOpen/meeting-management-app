import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meeting_app/app/share/dialogs.dart';
import 'package:meeting_app/app/share/states.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meeting_app/app/screens/menu_setting/main_page.dart';

//sign in function for calling to use in sign in button
class SignInFunctions {
  static Future<void> signInUser(
      BuildContext context,
      SignInFormState state,
      TextEditingController emailController,
      TextEditingController passwordController,
      SharedPreferences sharedPreferences) async {
    if (state.signInFormKey.currentState!.validate()) {
      state.signInFormKey.currentState?.save();
      try {
        //sign in with the entered email and password
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        )
            .then((value) {
          if (state.rememberMe) {
            // Save entered email and password if "Remember Me" is checked
            sharedPreferences.setString('email', emailController.text);
            sharedPreferences.setString('password', passwordController.text);
          }

          state.signInFormKey.currentState?.reset();
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return MainPage();
          }));
        });
      } on FirebaseAuthException catch (e) {
        print(e.code);
        String message;
        if (e.code == 'wrong-password') {
          message = "ລະຫັດຜ່ານບໍ່ຖືກຕ້ອງ!";
        } else if (e.code == 'user-not-found') {
          message = 'ບໍ່ພົບຜູ້ໃຊ້!';
        } else {
          message = e.code;
        }
        showExistingEmailSnackBar(context, message,
            backgroundColor: const Color.fromARGB(255, 173, 12, 0));
      }
    }
  }
}
