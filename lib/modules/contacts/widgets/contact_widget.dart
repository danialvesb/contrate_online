import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.grey[200]!,
          ],
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          elevation: 0,
          primary: Colors.transparent,
          onPrimary: Theme.of(context).primaryColor,
          shadowColor: Colors.transparent,
        ),
        onPressed: () => Get.toNamed('/work_details'),
        child: Container(
          width: context.width,
          height: 150,
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  'Pintor para parede de 100m2 em goiânia',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  height: .3,
                  color: Colors.grey[400],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      // width: context.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: context.width * .5,
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              "Preciso de pintar a parede de dois quartos, sem laje",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.all(15),
                            child: const Icon(
                              Icons.brush_rounded,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Spacer(),
                    Expanded(
                      // width: context.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(2),
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              'Paulo roberto',
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Anunciado a 3 horas',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.timer_outlined,
                                    size: 14,
                                    color: Colors.grey[800],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
