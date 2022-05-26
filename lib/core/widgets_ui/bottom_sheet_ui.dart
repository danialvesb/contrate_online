import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BottomSheetUi extends StatelessWidget {
  final Widget child;

  const BottomSheetUi({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          left: 10,
          right: 10,
        ),
        child: Container(
          width: context.width,
          // height: context.heightTransformer(reducedBy: 60),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(15),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
