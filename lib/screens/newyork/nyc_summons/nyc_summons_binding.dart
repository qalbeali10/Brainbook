import 'package:get/get.dart';

import 'nyc_summons_controller.dart';

class NYCSummonsBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NYCSummonsController());
  }

}
