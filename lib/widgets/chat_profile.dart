import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';

import 'package:whatsapp_ui/screens/chats_page.dart';

class ChatsProfile extends StatelessWidget {
  const ChatsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatsPage()));
            },
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage:
                    NetworkImage(info[index]['profilePic'].toString()),
              ),
              title: Text(
                info[index]['name'].toString(),
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                info[index]['message'].toString(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
              trailing: Column(
                children: [
                  Text(
                    info[index]['time'].toString(),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                  Icon(
                    Icons.volume_off_sharp,
                    color: Theme.of(context).colorScheme.onPrimary,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
