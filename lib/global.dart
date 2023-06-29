import 'package:chatty/common/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/store/user.dart';

class Global {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Get.putAsync<StorageService>(() => StorageService().init());
    Get.put<UserStore>(UserStore());
  }
}
