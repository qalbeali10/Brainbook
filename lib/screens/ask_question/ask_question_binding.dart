import 'package:brainbook/screens/ask_question/ask_question_controller.dart';
import 'package:get/get.dart';

class AskQuestionBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AskQuestionController());
  }

}