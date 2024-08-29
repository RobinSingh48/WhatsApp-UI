import 'package:flutter/material.dart';

class AppBaricons extends StatelessWidget {
  const AppBaricons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.camera_alt_outlined),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.search),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.more_vert),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
