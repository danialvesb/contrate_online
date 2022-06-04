import 'package:flutter/material.dart';

class RountedButtomUi extends StatelessWidget {
  final Widget child;
  final Color? primaryColor;
  final VoidCallback voidCallback;

  const RountedButtomUi({
    super.key,
    required this.child,
    this.primaryColor,
    required this.voidCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primaryColor ?? Theme.of(context).primaryColor,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: const CircleBorder(),
      ),
      onPressed: voidCallback,
      child: child,
    );
  }
}
