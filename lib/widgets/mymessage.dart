import 'package:flutter/material.dart';

class Mymessage extends StatelessWidget {
  final String message;
  final String date;
  const Mymessage({super.key, required this.date, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          elevation: 1,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 20, left: 10, right: 30),
                child: Text(
                  message,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onInverseSurface),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      date,
                      style: TextStyle(fontSize: 10, color: Colors.white60),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.done_all,
                      size: 15,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
