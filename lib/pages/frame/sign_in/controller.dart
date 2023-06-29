import 'package:chatty/common/entities/entities.dart';
import 'package:chatty/common/routes/names.dart';
import 'package:chatty/pages/frame/sign_in/state.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController extends GetxController {
  SignInController();

  final state = SignInState();

  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
    'openid'
    // Use my same google account with same password for multiple apps and websites
  ]);

  Future<void> handleSignIn(String type) async {
    // 1: Email, 2: Google, 3: Facebook, 4: Apple, 5: Phone No
    try {
      if (type == "phone number") {
        print("You are logging in with phone number");
      } else if (type == "Google") {
        var user = await _googleSignIn.signIn();
        if (user != null) {
          String? displayName = user.displayName;
          String email = user.email;
          String id = user.id;
          String photoUrl = user.photoUrl ?? "assets/icons/google.png";

          LoginRequestEntity loginRequestEntity = LoginRequestEntity();
          loginRequestEntity.avatar = photoUrl;
          loginRequestEntity.name = displayName;
          loginRequestEntity.email = email;
          loginRequestEntity.open_id = id;
          loginRequestEntity.type = 2;

          asyncPostAllData();
        }
      } else {
        print("Login type not sure...");
      }
    } catch (e) {
      print("Error with login $e");
    }
  }

  void asyncPostAllData() {
    Get.offAllNamed(AppRoutes.Message);
  }
}
