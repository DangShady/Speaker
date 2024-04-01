import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:speaker_flutter/pages/loading/loading.dart';

class LoadingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoadingController());
  }
}