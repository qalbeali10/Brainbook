import 'package:brainbook/screens/privacy_policy/privacy_policy_controller.dart';
import 'package:get/get.dart';

class PrivacyPolicyBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => PrivacyPolicyController());
  }

}