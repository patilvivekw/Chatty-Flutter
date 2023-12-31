import 'package:chatty/common/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'common/routes/pages.dart';
import 'global.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 780),
        builder: (builder, context) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
              title: 'Chatty',
              theme: AppTheme.light,
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
              builder: EasyLoading.init(),
            ));
  }
}
