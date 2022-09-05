import 'package:flutter/material.dart';
import 'package:flutter_week17/contact.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: const Center(
        child: Text("สวัสดีวันจันทร์"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("elon musk"), 
              accountEmail: Text("elon@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              title: const Text("Home"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
             ListTile(
              title: const Text("Contact"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactPage()));
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Hello");
        },
         child: const Icon(Icons.add),
      ),
    );
  }
}
