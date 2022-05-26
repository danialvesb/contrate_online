import 'package:get/get.dart';
import './work_details_controller.dart';

class WorkDetailsBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(WorkDetailsController());
    }
}