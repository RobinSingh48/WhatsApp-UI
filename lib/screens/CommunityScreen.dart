import 'package:flutter/material.dart';

class Communityscreen extends StatelessWidget {
  const Communityscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Communities'),
        actions: [
          IconButton(
            icon: Icon(Icons.photo_camera),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/communities_image.jpg',
                height: 150,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Stay connected with a community',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onInverseSurface),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'Communities bring members together in topic-based groups, and make it easy to get admin announcements. Any community you’re added to will appear here.',
              style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.onInverseSurface),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'See example communities',
                      style: TextStyle(color: Colors.green),
                    ),
                    Text(
                      ' >',
                      style: TextStyle(color: Colors.green, fontSize: 10),
                    ),
                  ],
                )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              ),
              child: Text(
                'Start your community',
                style: TextStyle(
                    fontSize: 16, color: Theme.of(context).colorScheme.surface),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
