import 'package:brainbook/screens/main/translator/translator_controller.dart';
import 'package:get/get.dart';

class TranslatorBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TranslatorController());
  }
}