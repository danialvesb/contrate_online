import 'package:contrate_online/core/widgets_ui/bottom_sheet_ui.dart';
import 'package:contrate_online/core/widgets_ui/text_form_field_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterServiceWidget extends StatelessWidget {
  const RegisterServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheetUi(
      child: Container(
        width: context.width,
        height: context.height,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Anunciar',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: context.width,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: .3, color: Colors.grey[400]!),
              ),
              child: Form(
                child: SizedBox(
                  width: context.width,
                  height: 300,
                  child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Informe que os detalhes do seu anuncio com detalhes',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Divider(),
                        TextFormFieldUi(),
                        TextFormFieldUi(),
                        TextFormFieldUi(),
                        TextFormFieldUi(),
                        TextFormFieldUi(),
                        TextFormFieldUi(),
                        TextFormFieldUi(),
                        TextFormFieldUi(),
                        TextFormFieldUi(),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
