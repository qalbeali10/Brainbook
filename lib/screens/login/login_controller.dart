// ignore_for_file: prefer_function_declarations_over_variables

import 'package:brainbook/data/provider/user_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginController({required this.userProvider});

  late UserProvider userProvider;
  final _rememberMe = false.obs;

  get rememberMe => _rememberMe.value;

  set rememberMe(value) => _rememberMe.value = value;

  final _obscure = true.obs;

  get obscure => _obscure.value;

  set obscure(value) => _obscure.value = value;

  GlobalKey<FormState> globalKey = GlobalKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  void signIn(String email, String password) {
    _auth.signInWithEmailAndPassword(email: email, password: password).then((value) {
      Fluttertoast.showToast(
        msg: "Login Successfull",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
    },).onError((error, stackTrace) {
      Fluttertoast.showToast(
        msg:error.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
    },
    );
  }

  // onLoginTap() async {
  //   if (globalKey.currentState!.validate()) {
  //     try{
  //       final response = await userProvider.loginUser(
  //         email: emailController.text,
  //         password: passwordController.text,
  //       );
  //       print("$response tokennnnn");
  //
  //       if(response[1]==true){
  //         Get.snackbar("scucess", response[2]);
  //         Get.toNamed(Routes.dashBoardScreen,arguments: response[0]);
  //         emailController.clear();
  //         passwordController.clear();
  //       }
  //       else{
  //         Get.snackbar("Error", response[2]);
  //       }
  //     }
  //     catch(e){
  //       Get.snackbar("Error", e.toString(),);
  //     }
  //   }
  //
  //
  //
  //
  //   // if(statusCode == 200) {
  //   //   print("$response response");
  //   //   print("$tokenOrMsg 22222222222");
  //   // } else {
  //   //   print("error: $tokenOrMsg");
  //   // }
  // }
}
