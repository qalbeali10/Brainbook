import 'package:get/get.dart';

import 'ny_agency_detail_controller.dart';

class NYAgenciesDetailBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NYAgenciesDetailController());
  }

}