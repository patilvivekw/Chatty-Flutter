import 'package:chatty/common/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/store/user.dart';

class Global {
  static Future init() async {
    // First all Widget Bindings needs to be initialized
    WidgetsFlutterBinding.ensureInitialized();
    // For Shared Preferences
    await Get.putAsync<StorageService>(() => StorageService()
        .init()); // Used for data operations that happens in async/future
    // For User Login state management
    Get.put<UserStore>(
        UserStore()); // inject controller and always ready to be used
  }
}
