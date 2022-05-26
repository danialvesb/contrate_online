import 'package:flutter/material.dart';

class InputChatWidget extends StatelessWidget {
  const InputChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Expanded(
            child: Card(
              elevation: 1,
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'Digite uma mensagem',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  hintTextDirection: TextDirection.ltr,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.transparent),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.send, color: Colors.blue[200]),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shadowColor: Colors.transparent,
              primary: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
