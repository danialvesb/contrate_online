import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagesChatWidget extends StatelessWidget {
  const MessagesChatWidget({super.key});

  Widget messageUser(BuildContext context, String message, String type) {
    return Row(
      mainAxisAlignment:
          type == 'sender' ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
            border: type == 'recipient'
                ? Border.all(width: 1, color: Colors.grey[300]!)
                : null,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            gradient: type == 'sender'
                ? LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.blue[500]!,
                      Colors.blue[300]!,
                    ],
                  )
                : null,
          ),
          child: ElevatedButton(
            onPressed: () {},
            onLongPress: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: const EdgeInsets.all(10),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              shadowColor: Colors.transparent,
              primary: Colors.transparent,
              onPrimary:
                  type == 'recipient' ? Theme.of(context).primaryColor : null,
            ),
            child: Text(
              message,
              style: TextStyle(
                color: type == 'sender' ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: context.width,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            // color: Colors.blue,
            ),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              40,
              (index) => messageUser(context, 'Olá - $index',
                  index % 2 == 0 ? 'sender' : 'recipient'),
            ),
          ),
        ),
      ),
    );
  }
}
