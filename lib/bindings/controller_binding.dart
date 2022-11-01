import 'package:get/get.dart';
import 'package:themart/controller/product.dart';
import 'package:themart/controller/slide.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SlideController());
    Get.put(ProductController());
  }
}
