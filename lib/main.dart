import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'common/routes/pages.dart';

void main() {
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
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
            ));
  }
}
