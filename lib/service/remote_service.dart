import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:themart/model/slide.dart';

import '../model/product.dart';

class RemoteService {
  static var client = http.Client();
  static var baseURL = "http://192.168.100.236:3000";

  // ignore: body_might_complete_normally_nullable
  static Future<List<String>?> fetchSlides() async {
    try {
      var response = await client.get(Uri.parse("$baseURL/slides"));

      if (response.statusCode == 200) {
        var jsonString = response.body;
        return slideModelFromJson(jsonString);
      } else {
        return null;
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    }
  }

  static Future<List<Product>?> fetchFeaturedProduct() async {
    try {
      var response = await client.get(Uri.parse("$baseURL/items"));

      if (response.statusCode == 200) {
        var jsonString = response.body;
        return productFromJson(jsonString);
      } else {
        return null;
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    }
    return null;
  }
}
