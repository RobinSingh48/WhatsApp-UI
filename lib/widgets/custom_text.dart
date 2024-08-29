import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Theme.of(context).colorScheme.onInverseSurface),
    );
  }
}
