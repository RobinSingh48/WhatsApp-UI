import 'package:flutter/material.dart';

class MessageTextfield extends StatelessWidget {
  const MessageTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            child: Row(
              children: <Widget>[
                Icon(Icons.emoji_emotions, color: Colors.grey),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Message",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(Icons.attach_file, color: Colors.grey),
                SizedBox(width: 10),
                Icon(Icons.currency_rupee_sharp, color: Colors.grey),
                SizedBox(width: 10),
                Icon(Icons.camera_alt_outlined, color: Colors.grey),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            Icons.mic,
            color: Theme.of(context).colorScheme.surface,
          ),
        )
      ],
    );
  }
}
