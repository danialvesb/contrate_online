import 'package:get/get.dart';
import './works_controller.dart';

class WorksBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(WorksController());
    }
}