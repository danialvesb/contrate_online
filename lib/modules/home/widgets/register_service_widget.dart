import 'package:contrate_online/core/widgets_ui/bottom_sheet_ui.dart';
import 'package:contrate_online/core/widgets_ui/elevated_button_ui.dart';
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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Anunciar serviço',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Informe que os detalhes do seu anuncio com detalhes',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Container(
              width: context.width,
              padding: const EdgeInsets.all(10),
              child: Form(
                child: SizedBox(
                  width: context.width,
                  height: 300,
                  child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text('Título'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          minLines: 4,
                          maxLines: 5,
                          decoration: const InputDecoration(
                            label: Text('Descrição'),
                            alignLabelWithHint: true,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // TextFormField(
                        //   decoration: const InputDecoration(
                        //     label: Text('Título'),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // TextFormField(
                        //   decoration: const InputDecoration(
                        //     label: Text('Título'),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButtonUi(
                          voidCallback: () => {},
                          child: SizedBox(
                            width: context.width,
                            child: const Text(
                              'Salvar',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
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
