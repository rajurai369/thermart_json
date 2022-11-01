import 'package:get/get.dart';
import 'package:themart/service/remote_service.dart';

class SlideController extends GetxController {
  static var slides =[].obs;
 var isloading = true.obs;
   Future getSlides() async {
    try {
      var data = await RemoteService.fetchSlides();
      if (data != null) {
        slides.value = data;
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    } finally {
      isloading(false);
    }
  }

  @override
  void onInit() {
    // ignore: todo
    // TODO: implement onInit
    super.onInit();
    getSlides();
  }
}
