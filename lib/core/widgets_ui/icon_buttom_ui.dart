import 'package:flutter/material.dart';

class IconButtomUi extends StatelessWidget {
  final String label;
  final Icon icon;
  final VoidCallback voidCallback;
  final Color primaryColor;

  const IconButtomUi({
    super.key,
    required this.label,
    required this.icon,
    required this.voidCallback,
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: ElevatedButton(
        onPressed: voidCallback,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          shadowColor: Colors.transparent,
          primary: Colors.transparent,
          onPrimary: primaryColor,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Column(
          children: [
            icon,
            Text(
              label,
              style: TextStyle(
                color: primaryColor,
                fontSize: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
