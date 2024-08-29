import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/app_barIcons.dart';

class StatusbarScreen extends StatelessWidget {
  const StatusbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Status"),
        actions: const [
          AppBaricons(),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.add,
                        size: 15, color: Theme.of(context).colorScheme.surface),
                  ),
                ),
              ],
            ),
            title: Text(
              'My status',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Tap to add status update',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Viewed updates',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
            ),
            title: Text(
              'Ravi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Yesterday, 7:23 PM',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Divider(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_open,
                size: 12,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              Text(
                " Your Status Update are",
                style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.onPrimary),
              ),
              Text(
                " end-to-end encrypted",
                style: TextStyle(color: Colors.green, fontSize: 12),
              )
            ],
          )
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.edit,
              color: Theme.of(context).colorScheme.onInverseSurface,
            ),
            backgroundColor: Theme.of(context).colorScheme.onSecondary,
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.camera_alt,
              color: Theme.of(context).colorScheme.onInverseSurface,
            ),
            backgroundColor: Color(0xff21C063),
          ),
        ],
      ),
    );
  }
}
