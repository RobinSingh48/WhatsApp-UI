import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:whatsapp_ui/screens/CommunityScreen.dart';
import 'package:whatsapp_ui/screens/call_screen.dart';
import 'package:whatsapp_ui/screens/chat_screen.dart';
import 'package:whatsapp_ui/screens/statusbar_screen.dart';
import 'package:whatsapp_ui/widgets/provider.dart';

class NavigatorScreen extends StatelessWidget {
  NavigatorScreen({super.key});

  final List<Widget> screens = [
    const ChatScreen(),
    const StatusbarScreen(),
    const Communityscreen(),
    const CallScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<ScreenNavigator>(
      builder: (context, provider, child) {
        return Scaffold(
          bottomNavigationBar: NavigationBar(
            indicatorColor: Theme.of(context).colorScheme.inverseSurface,
            selectedIndex: provider.currentIndex,
            onDestinationSelected: (value) {
              provider.getCurrentIndex(value);
            },
            destinations: [
              NavigationDestination(
                  icon: Icon(
                    Icons.chat_sharp,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  label: "Chats"),
              NavigationDestination(
                  icon: Icon(
                    Icons.circle_outlined,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  label: "Status"),
              NavigationDestination(
                  icon: Icon(
                    CupertinoIcons.person_3_fill,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  label: "Communities"),
              NavigationDestination(
                  icon: Icon(
                    Icons.call,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  label: "Calls"),
            ],
          ),
          body: screens[provider.currentIndex],
        );
      },
    );
  }
}
