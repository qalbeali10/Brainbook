import 'package:get/get.dart';

import 'nypd_controller.dart';

class NYPDBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() =>  NYPDController());
  }

}