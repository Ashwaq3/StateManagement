import 'package:get/get.dart';

//Simple State Manger
class CounterControllerMethod01 extends GetxController{
  int counter = 0;

  void incrementCounter() {
      counter++;
      update();
  }

}

//Reactive state manager "Stream of data"
class CounterControllerMethod02 extends GetxController{
  RxInt counter = 0.obs;

  void incrementCounter() {
    counter.value++;
  }

}