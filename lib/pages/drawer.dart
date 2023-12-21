import 'package:flutter/material.dart';

class CustomerDrawer extends StatefulWidget {
  const CustomerDrawer({super.key});

  @override
  State<CustomerDrawer> createState() => _CustomerDrawerState();
}

class _CustomerDrawerState extends State<CustomerDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('images/logo.jpeg'),
                    height: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "मेलम्ची नगरपालिका",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('घर'),
            onTap: () {
              // TODO: Handle navigation to home
              Navigator.pushNamed(context, 'homepage');
            },
          ),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('समाचार'),
            onTap: () {
              // TODO: Handle navigation to settings
              Navigator.pushNamed(context, 'customer_news');
            },
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text('कार्यक्रम'),
            onTap: () {
              // TODO: Handle navigation to settings
              Navigator.pushNamed(context, 'customer_event');
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('फोटो'),
            onTap: () {
              // TODO: Handle navigation to settings
              Navigator.pushNamed(context, 'customer_photo');
            },
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text('भिडियो'),
            onTap: () {
              // TODO: Handle navigation to settings
              Navigator.pushNamed(context, 'customer_video');
            },
          ),
        ],
      ),
    );
  }
}
