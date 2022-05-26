import 'package:flutter/material.dart';

class WorkDetailsWidget extends StatelessWidget {
  const WorkDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.grey[100]!,
            Colors.white,
          ],
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Pintor para parede de 100 m2 em goiânia'),
          Divider(),
          SizedBox(
            height: 50,
            child: Text(
              'Preciso de um pintar a parede de dois quartos, sem laje',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
