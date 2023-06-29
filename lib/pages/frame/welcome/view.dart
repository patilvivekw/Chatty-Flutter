import 'package:chatty/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  Widget _buildPageHeadTitle(String title) {
    return Container(
        margin: const EdgeInsets.only(top: 350, left: 20),
        child: Text(title,
            style: const TextStyle(
                color: AppColors.primaryElementText,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 45)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElement,
      body: SizedBox(
          width: 360,
          height: 780,
          child: _buildPageHeadTitle(controller.title)),
    );
  }
}
