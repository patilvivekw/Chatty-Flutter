import 'package:chatty/common/apis/apis.dart';
import 'package:chatty/pages/contact/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  ContactController();

  final state = ContactState();

  @override
  void onReady() {
    super.onReady();

    asyncLoadAllData();
  }

  asyncLoadAllData() async {
    EasyLoading.show(
      indicator: CircularProgressIndicator(),
      maskType: EasyLoadingMaskType.clear,
      dismissOnTap: true,
    );
    state.contactList.clear();
    var result = await ContactAPI.post_contact();
    print(result.data);

    if (result.code == 0) {
      state.contactList.addAll(result.data!);
    }
    EasyLoading.dismiss();
  }
}
