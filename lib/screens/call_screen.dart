import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/app_barIcons.dart';

import 'package:whatsapp_ui/widgets/custom_text.dart';
import 'package:whatsapp_ui/widgets/recent_call_profile.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calls"),
        actions: const [
          AppBaricons(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.add_call,
          color: Theme.of(context).colorScheme.onInverseSurface,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: CustomText(
              text: "Favorites",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.green,
                    child: Icon(CupertinoIcons.heart_fill,
                        color: Theme.of(context).colorScheme.surface)),
                SizedBox(
                  width: 10,
                ),
                CustomText(text: "Add to Favorites"),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CustomText(text: "Recent"),
          ),
          RecentCallProfile()
        ],
      ),
    );
  }
}
