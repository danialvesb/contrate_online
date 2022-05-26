import 'package:contrate_online/modules/contacts/contacts_bindings.dart';
import 'package:contrate_online/modules/contacts/contacts_page.dart';

import 'package:contrate_online/modules/profile/profile_bindings.dart';

import 'package:contrate_online/modules/works/works_bindings.dart';
import 'package:contrate_online/modules/works/works_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../customers/customers_bindings.dart';
import '../customers/customers_page.dart';
import '../profile/profile_page.dart';

class HomeController extends GetxController {
  static const NAVIGATOR_KEY = 1;
  final _tabIndex = 0.obs;
  final _tabs = [
    '/works',
    '/customers',
    '/contacts',
    '/profile',
  ];

  int get tabIndex => _tabIndex.value;

  set tabIndex(int index) {
    _tabIndex(index);
    Get.toNamed(_tabs[index], id: NAVIGATOR_KEY);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/works') {
      return GetPageRoute(
        settings: settings,
        page: () => const WorksPage(),
        binding: WorksBindings(),
        transition: Transition.fadeIn,
      );
    }

    if (settings.name == '/customers') {
      return GetPageRoute(
        settings: settings,
        page: () => const CustomersPage(),
        binding: CustomersBindings(),
        transition: Transition.fadeIn,
      );
    }

    if (settings.name == '/contacts') {
      return GetPageRoute(
        settings: settings,
        page: () => const ContactsPage(),
        binding: ContactsBindings(),
        transition: Transition.fadeIn,
      );
    }

    if (settings.name == '/profile') {
      return GetPageRoute(
        settings: settings,
        page: () => const ProfilePage(),
        binding: ProfileBindings(),
        transition: Transition.fadeIn,
      );
    }

    return null;
  }
}
