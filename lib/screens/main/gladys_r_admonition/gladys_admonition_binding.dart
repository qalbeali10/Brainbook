import 'package:get/get.dart';

import 'gladys_r_admonition_controller.dart';

class GladysAdmonitionBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => GladysRAdmonitionController());
  }

}