import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorksDetailsActionsWidget extends StatelessWidget {
  const WorksDetailsActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('O que deseja fazer?'),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // padding: EdgeInsets.all(0),
                primary: Theme.of(context).primaryColor,
                elevation: 0,
                shadowColor: Colors.transparent,
              ),
              onPressed: () => Get.toNamed('/chat'),
              child: SizedBox(
                width: context.widthTransformer(reducedBy: 65),
                child: Row(
                  children: const [
                    Text(
                      'Contactar cliente',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.chat)
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // padding: EdgeInsets.all(0),
                primary: Theme.of(context).primaryColor,
                elevation: 0,
                shadowColor: Colors.transparent,
              ),
              onPressed: () => {},
              child: SizedBox(
                width: context.widthTransformer(reducedBy: 65),
                child: Row(
                  children: const [
                    Text(
                      'Salvar cliente',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.save_as)
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
