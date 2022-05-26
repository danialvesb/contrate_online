import 'package:flutter/material.dart';

class ElevatedButtonUi extends StatelessWidget {
  final VoidCallback voidCallback;
  final Color? primary;
  final Color? onPrimary;
  final Widget child;

  const ElevatedButtonUi({
    super.key,
    required this.voidCallback,
    required this.child,
    this.primary,
    this.onPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primary ?? Theme.of(context).primaryColor,
        elevation: 0,
        shadowColor: Colors.transparent,
        onPrimary: onPrimary,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: voidCallback,
      child: child,
    );
  }
}
