import 'package:get/get.dart';
import 'package:themart/service/remote_service.dart';

import '../model/product.dart';

class ProductController extends GetxController {
  var  products =<Product>[].obs;
  var isloading = true.obs;

  
  Future getFeaturedProduct() async {
    try {
      var data = await RemoteService.fetchFeaturedProduct();
      if (data != null) {
        products.value = data;
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
    getFeaturedProduct();
  }
}
