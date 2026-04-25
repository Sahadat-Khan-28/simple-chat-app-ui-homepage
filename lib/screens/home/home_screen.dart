import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> people = [
    "James Anderson",
    "Sophia Martinez",
    "Michael Brown",
    "Olivia Wilson",
    "Daniel Harris",
    "Emma Thompson",
    "William Clark",
    "Ava Robinson",
    "Benjamin Lewis",
    "Mia Walker",
    "Alexander Hall",
    "Charlotte Young",
    "Matthew Allen",
    "Isabella King",
    "Ethan Scott",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://thumbs.dreamstime.com/b/portrait-charming-girl-fashionable-make-up-pleasant-smile-brunette-long-wavy-hair-concept-health-beauty-skin-363033108.jpg",
              ),
            ),
          ),
        ],
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          "Chat App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),

      body: ListView(
        children: [
          for (String i in people)
            Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide())),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://sb.kaleidousercontent.com/67418/1920x1545/c5f15ac173/samuel-raita-ridxdghg7pw-unsplash.jpg",
                  ),
                ),
                title: Text(i),
                subtitle: Text("Message"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.message_outlined, color: Colors.blue),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.call, color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
