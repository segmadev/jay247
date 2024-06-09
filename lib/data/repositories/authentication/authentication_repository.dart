import 'package:jay247/pages/auth/screens/signin/signin_screen.dart';
import 'package:jay247/pages/auth/screens/switch/switch_theme_page.dart';
import 'package:jay247/pages/auth/screens/verify/otp_screen.dart';
import 'package:jay247/pages/user/models/user.dart';
import 'package:jay247/utills/local_storage/storage_utility.dart';
import 'package:jay247/utills/popups/snack_bar_pop.dart';
import 'package:jay247/widgets/navigation/navigation_menu.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  // const AuthenticationRepository({super.key});

  final deviceStorage = Get.put(ALocalStorage());
  @override
  void onReady() {
    screenRedirect();
  }

  screenRedirect() async {
    try {
      if (deviceStorage.readData("currentUser") == null) {
        deviceStorage.saveDataIfNull("IsFirstTime", true);
        deviceStorage.readData('IsFirstTime') != true
            ? Get.offAll(const SignInScreen())
            : Get.offAll(const SwitchThemePage());
      } else {
        final user = User.user;
        if (!user.isVerified) {
          Get.offAll(const OtpScreen());
        } else {
          Get.offAll(const NavigationMenu());
        }
      }
    } catch (e) {
      print(e);
      // logout();
    }
  }

// logout
  void logout() async {
    await deviceStorage.clearAll();
    deviceStorage.saveDataIfNull("IsFirstTime", false);
    ASnackBar().dangerSackBar(title: "Logout", message: "Account logout");
    screenRedirect();
  }
  // signup
}
