import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:whatsapp_ui/widgets/chat_profile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        surfaceTintColor: Theme.of(context).colorScheme.primary,
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(
          "WhatsApp",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Theme.of(context).colorScheme.primary),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff21C063),
        onPressed: () {},
        child: Icon(
          Icons.message_sharp,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  borderRadius: BorderRadius.circular(30)),
              child: TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintText: "Search...",
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              )),
          SizedBox(
            height: 5,
          ),
          ChatsProfile(),
        ],
      ),
    );
  }
}
