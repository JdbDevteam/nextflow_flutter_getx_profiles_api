import 'package:get/get.dart';
import 'package:nextflow_flutter_getx_profiles_api/models/profile_model/profile_model.dart';

class ProfileController extends GetxController {
  var loading = false.obs;
  var profiles = <ProfileModel>[];

  void loadDataFromAPI() async {
    loading.value = true;

    var cn = Get.find<GetConnect>();

    var response = await cn
        .get('https://651d740c44e393af2d59d2b4.mockapi.io/api/profiles');

    var convertJson = response.body.map((data) {
      return ProfileModel.fromMap(data);
    });

    profiles = List<ProfileModel>.from(convertJson);

    loading.value = false;
  }
}
