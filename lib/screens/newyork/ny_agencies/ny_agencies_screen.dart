import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/main/gang_slang/widgets/gang_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ny_agencies_controller.dart';

class NYAgenciesScreen extends GetView<NYAgenciesController> {
  const NYAgenciesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "NY Agencies",
      ),
      backgroundColor: backgroundColor,
      body: Form(
        key: controller.globalKey,
        child: Column(
          children: [
            Container(
              height: 80,
              decoration: const BoxDecoration(gradient: linearColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 18.0, vertical: 15),
                child: TextFormFieldWidget(
                  title: "Search",
                  controller: controller.search,
                  icon: const Icon(Icons.search),
                ),

              ),
            ),
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(top: 20),
              shrinkWrap: true,
              itemCount: controller.nyAgencyList.length,
              itemBuilder: (context, index) {
                return GangSlangListWidget(
                  onTap: ()
                  =>Get.toNamed(Routes.nYAgenciesDetailScreen,arguments: controller.nyAgencyList[index]),
                  text: controller.nyAgencyList[index],
                );
              },
            ),
            const SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
