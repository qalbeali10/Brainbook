
import 'package:get/get.dart';

import 'romeoville_pd_controller.dart';



class RomeopvillePDBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => RomeopvillePDController());
  }

}