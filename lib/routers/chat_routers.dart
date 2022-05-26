import 'package:contrate_online/modules/chat/chat_bindings.dart';
import 'package:contrate_online/modules/chat/chat_page.dart';
import 'package:get/route_manager.dart';

class ChatRouters {
  ChatRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: '/chat',
      binding: ChatBindings(),
      page: () => const ChatPage(),
    ),
  ];
}
