import 'package:chatty/common/routes/names.dart';
import 'package:chatty/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'controller.dart';

class MessagePage extends GetView<MessageController> {
  const MessagePage({super.key});

  Widget _headBar() {
    return Center(
      child: Container(
        width: 320.w,
        height: 44.h,
        margin: EdgeInsets.only(top: 20.h, bottom: 20.h),
        child: Row(
          children: [
            Stack(
              children: [
                GestureDetector(
                  child: Container(
                    width: 44.h,
                    height: 44.h,
                    decoration: BoxDecoration(
                        color: AppColors.primarySecondaryBackground,
                        borderRadius: BorderRadius.all(Radius.circular(22.h)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0, 1),
                          )
                        ]),
                    child: controller.state.head_detail.value.avatar == null
                        ? Image(
                      image:
                      AssetImage("assets/images/account_header.png"),
                    )
                        : Text("HI"),
                  ),
                  onTap: () {
                    controller.goToProfile();
                  },
                ),
                Positioned(
                    bottom: 5.w,
                    right: 0.w,
                    height: 14.w,
                    child: Container(
                      height: 14.w,
                      width: 14.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2.w, color: AppColors.primaryElementText),
                        color: AppColors.primaryElementStatus,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.w),
                        ),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                // slivers - fancy way of loading listview
                SliverAppBar(
                  pinned: true,
                  title: _headBar(),
                )
              ],
            ),
            Positioned(
                right: 20.w,
                bottom: 70.w,
                height: 50.w,
                width: 50.w,
                child: GestureDetector(
                  child: Container(
                    height: 50.w,
                    width: 50.w,
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                        color: AppColors.primaryElement,
                        borderRadius: BorderRadius.all(Radius.circular(40.w)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: const Offset(1, 1))
                        ]),
                    child: Image.asset("assets/icons/contact.png"),
                  ),
                  onTap: () {
                    Get.toNamed(AppRoutes.Contact);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
