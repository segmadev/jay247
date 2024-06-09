import 'package:jay247/pages/user/models/user.dart';
import 'package:jay247/utills/helpers/network_manager.dart';
import 'package:get/get.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
    Get.put(User);
  }
}
