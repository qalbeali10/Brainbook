import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'gladys_r_admonition_controller.dart';


class GladysRAdmonitionScreen extends GetView<GladysRAdmonitionController> {
  const GladysRAdmonitionScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppBar(
        title: "${Get.arguments} Admonition",
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  // contentPadding: EdgeInsets.only(left: 10.0),
                  title: HeadingTextWidget(
                      text: controller
                          .HeadingList[0]),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                        controller.DetailList[0]),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
