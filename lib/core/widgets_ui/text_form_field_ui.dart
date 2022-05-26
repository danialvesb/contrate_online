import 'package:flutter/material.dart';

class TextFormFieldUi extends StatelessWidget {
  const TextFormFieldUi({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        label: Text(
          'Nome',
          style: TextStyle(
            color: Colors.grey[500],
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(width: .5, color: Theme.of(context).primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(width: .5, color: Theme.of(context).primaryColor),
        ),
        contentPadding: const EdgeInsets.all(5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(width: .5, color: Theme.of(context).primaryColor),
        ),
      ),
      strutStyle: const StrutStyle(),
      style: const TextStyle(
          // color: Theme.of(context).primaryColor,
          ),
    );
  }
}
