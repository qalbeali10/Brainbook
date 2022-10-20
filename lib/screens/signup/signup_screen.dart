// ignore_for_file: unused_local_variable, prefer_const_declarations, must_be_immutable, unused_import

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/core/theme/values/text_style.dart';
import 'package:brainbook/global_controller/email_password_validator.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/rich_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart' hide Response;
import 'signup_controller.dart';
import 'package:dio/dio.dart';

class SignUp extends GetView<SignUpController> {
  SignUp({Key? key}) : super(key: key);
  ValidatorController validatorController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Form(
          key: controller.globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 65,
              ),
              Image.asset(
                splashImage,
                height: 120,
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "Sign up to get started",
                style: textStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 45,
              ),
              TextFormFieldWidget(
                title: "email ",
                icon: const Icon(Icons.email_outlined, color: fontColorDark),
                obscureText: false,
                controller: controller.emailController,
                validator: validatorController.emailValidator,
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => TextFormFieldWidget(
                  title: "Password ",
                  icon: const Icon(
                    Icons.lock_open_outlined,
                    color: fontColorDark,
                  ),
                  controller: controller.passwordController,
                  obscureText: controller.obscure,
                  inkWell: GestureDetector(
                    onTap: () {
                      controller.obscure = !controller.obscure;
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(controller.obscure ? "Show" : "Hide",
                          style: const TextStyle(color: fontColorLight)),
                    ),
                  ),
                  validator: validatorController.passwordValidator,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Form(
                  //  key: controller.dropdownglobalKey,
                  child: DropdownButtonFormField(
                    value: controller.dropdownvalue == ""
                        ? null
                        : controller.dropdownvalue,

                    // isExpanded: true,
                    validator: (value) {
                      if (value == null) {
                        return "null";
                      }
                      return null;
                    },
                    hint: const Text("State"),
                    onChanged: (value) {
                      controller.dropdownvalue = value.toString();
                    },
                    items: controller.cities.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    // List.generate(controller.cities.length, (index) {
                    //   return DropdownMenuItem(
                    //     child: Text(controller.cities[index]),
                    //     value: index.toString(),
                    //   );
                    // }),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabled: false,
                      enabledBorder: InputBorder.none,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ButtonWidget(
                  title: "CREATE ACCOUNT",
                  onTap: () => Get.toNamed(Routes.dashBoardScreen)
                  //controller.onCreateTap,
                  ),
              const SizedBox(
                height: 35,
              ),
              RichTextWidget(
                firstTitle: "Already Have an Account?  ",
                secondTitle: "Login",
                onTap: () => Get.back(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
