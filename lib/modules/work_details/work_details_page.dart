import 'package:contrate_online/modules/work_details/widgets/work_details_profile.dart';
import 'package:contrate_online/modules/work_details/widgets/work_details_widget.dart';
import 'package:contrate_online/modules/work_details/widgets/works_details_actions_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './work_details_controller.dart';

class WorkDetailsPage extends GetView<WorkDetailsController> {
  const WorkDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Contrate online'),
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(
            padding: const EdgeInsets.all(14),
            width: context.width,
            height: context.height,
            decoration: const BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                WorkDetailsWidget(),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                Text('Localizado a 3km de você.'),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                WorksDetailsActionsWidget(),
                SizedBox(
                  height: 10,
                ),
                WorkDetailsProfile()
              ],
            )),
      ),
    );
  }
}
