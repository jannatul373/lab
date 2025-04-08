import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false));
}

class LinkedInStructure extends StatelessWidget {
  const LinkedInStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("Md. Mezbaul Islam Zion"),
              accountEmail: Text("Lecturer"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("image"),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 76, 126, 167),
              ),
            ),
            ListTile(
              leading: Icon(Icons.videogame_asset),
              title: Text("Puzzle Games"),
            ),
            ListTile(leading: Icon(Icons.bookmark), title: Text("Saved Posts")),
            ListTile(leading: Icon(Icons.group), title: Text("Groups")),
            Divider(),
            ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text("Try Premium "),
            ),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        title: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              const Icon(Icons.search, color: Colors.grey),
              const SizedBox(width: 10),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),

      body: const Center(child: Text("body")),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'My Network',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Post'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Jobs'),
        ],
      ),
    );
  }
}
