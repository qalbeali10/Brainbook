import 'package:brainbook/screens/response/response_controller.dart';
import 'package:get/get.dart';

class ResponseBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ResponseController());
  }

}