import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widgets/chats.dart';
import 'package:whatsapp_ui/widgets/message_textfield.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      NetworkImage(info[0]['profilePic'].toString()),
                ),
                SizedBox(
                  width: 10,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 120),
                  child: Text(
                    info[0]['name'].toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.videocam_outlined),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.call),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.more_vert)
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Chats(),
          ),
          MessageTextfield()
        ],
      ),
    );
  }
}
