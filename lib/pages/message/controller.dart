import 'package:chatty/common/routes/routes.dart';
import 'package:chatty/pages/message/state.dart';
import 'package:get/get.dart';

class MessageController extends GetxController {
  MessageController();

  final state = MessageState();

  Future<void> goToProfile() async {
    await Get.toNamed(AppRoutes.Profile);
  }
}
