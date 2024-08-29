import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widgets/mymessage.dart';
import 'package:whatsapp_ui/widgets/send_message.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return Mymessage(
              date: messages[index]['time'].toString(),
              message: messages[index]['text'].toString());
        }
        return SendMessage(
            date: messages[index]['time'].toString(),
            message: messages[index]['text'].toString());
      },
    );
  }
}
