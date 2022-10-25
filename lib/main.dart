// ignore_for_file: await_only_futures

import 'package:brainbook/routes/app_pages.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'global_controller/email_password_validator.dart';

class ValidationBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ValidatorController());
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        // unselectedWidgetColor: ackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: ValidationBinding(),
      initialRoute: Routes.splashScreen,
      getPages: AppPages.pages,
    );
  }
}
