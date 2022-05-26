import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkDetailsProfile extends StatelessWidget {
  const WorkDetailsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 200,
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: .4,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Cliente:',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Text('André sousa'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Para ter acesso ao endereço, entre em contato com o cliente.',
          ),
        ],
      ),
    );
  }
}
