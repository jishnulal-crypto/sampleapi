import 'package:get/get.dart';
import 'package:projectapi/app/data/api_service/api_service.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  var response = Response().obs;
  void increment() => count.value++;

  Future<void> loginFunction(String name, pass) async {
    response.value = await ApiService.login(name, int.parse(pass));
    update();
  }
}
