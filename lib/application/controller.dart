import 'package:get/get.dart';

class HomeController extends GetxController{
  int count = 0;
  RxBool isLoading = false.obs;

  increment(){
    count++;
    update();
  }

  getInfo(){
    isLoading.value = true;
    //Repo.getProduct()
    isLoading.value = false;

    //kop ozgaradigan state uchun obx ishlatish yaxshi
  }
}