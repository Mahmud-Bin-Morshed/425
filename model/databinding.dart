
import 'package:get/get.dart';

import '../controller/controller.dart';

class DataBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DataController());
  }

}
