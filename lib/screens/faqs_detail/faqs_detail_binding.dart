import 'package:brainbook/screens/faqs_detail/faqs_detail_controller.dart';
import 'package:get/get.dart';

class FAQsDetailBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FAQsDetailController());
  }

}