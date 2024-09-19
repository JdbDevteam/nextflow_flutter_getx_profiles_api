import 'package:get/get.dart';

class ProfileController extends GetxController {
  var laoding = false.obs;

  void loadDataFromAPI() {
    laoding.value = true;

    Future.delayed(Duration(seconds: 3));

    laoding.value = false;
  }
}
