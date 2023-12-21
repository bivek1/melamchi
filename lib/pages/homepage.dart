import 'package:flutter/material.dart';
import 'package:melamchi/pages/drawer.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    ExploreScreen(),
    ProfileScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(""), Icon(Icons.info_outline_rounded)],
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        drawer: CustomerDrawer(),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'घर',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'नागरिक प्रतिक्रिया',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'नागरिक वडापत्र',
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width * .45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.lightBlueAccent),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.newspaper_rounded,
                        size: 60,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "समाचार",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      )
                    ]),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'map');
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * .45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.redAccent),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.map_sharp,
                          size: 60,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "नक्सा",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        )
                      ]),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width * .99,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              gradient: LinearGradient(
                colors: [Colors.redAccent, Colors.lightBlueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.comment_bank,
                    size: 60,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "नागरिक प्रतिक्रिया",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white, // White background color
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 4), // Offset of the shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.mic,
                  color: Colors.redAccent,
                  size: 40,
                ),
                Text(
                  "अडियो मार्फत नागरिक प्रतिक्रिया",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Explore Screen'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
    );
  }
}
