import 'package:brainbook/screens/locations/location_controller.dart';
import 'package:get/get.dart';

class LocationBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LocationController());
  }

}