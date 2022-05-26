import 'package:contrate_online/modules/chat/widgets/input_chat_widget.dart';
import 'package:contrate_online/modules/chat/widgets/messages_chat_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './chat_controller.dart';

class ChatPage extends GetView<ChatController> {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Conversar com o cliente'),
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Column(
          children: const [
            MessagesChatWidget(),
            InputChatWidget(),
          ],
        ),
      ),
    );
  }
}
