import 'package:get/get.dart';

import 'pursuits_controller.dart';

class PursuitsBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => PursuitsController());
  }

}