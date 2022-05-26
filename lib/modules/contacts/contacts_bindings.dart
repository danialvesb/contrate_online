import 'package:get/get.dart';
import './contacts_controller.dart';

class ContactsBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ContactsController());
    }
}