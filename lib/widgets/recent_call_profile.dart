import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/call_info.dart';

class RecentCallProfile extends StatelessWidget {
  const RecentCallProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: callinfo.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
                radius: 25,
                backgroundImage:
                    NetworkImage(callinfo[index]['profilePic'].toString())),
            title: Text(callinfo[index]['name'].toString(),
                style: TextStyle(
                  color: (callinfo[index]['isme'] == false &&
                          callinfo[index]['callrecieved'] == false)
                      ? Colors.red
                      : Colors.white,
                )),
            subtitle: Row(
              children: [
                Icon(
                    (callinfo[index]['isme'] == false &&
                            callinfo[index]['callrecieved'] == false)
                        ? CupertinoIcons.arrow_down_left
                        : (callinfo[index]['isme'] == true &&
                                callinfo[index]['callrecieved'] == true)
                            ? Icons.arrow_outward_outlined
                            : CupertinoIcons.arrow_down_left,
                    color: (callinfo[index]['isme'] == false &&
                            callinfo[index]['callrecieved'] == false)
                        ? Colors.red
                        : Colors.green),
                Text(callinfo[index]['time'].toString()),
              ],
            ),
            trailing: Icon(Icons.call_outlined),
          );
        },
      ),
    );
  }
}
