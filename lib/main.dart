import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat)),
              Tab(icon: Icon(Icons.circle_outlined)),
              Tab(icon: Icon(Icons.call)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Card(
                  elevation: 4,
                  child: ListTile(
                    leading: const CircleAvatar(child: Icon(Icons.person)),
                    title: const Text("Irfhan"),
                    subtitle: const Text("Bro! Ngantuk ya mapel ini..."),
                    trailing: const Text(
                      "50",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  child: ListTile(
                    leading: const CircleAvatar(child: Icon(Icons.person)),
                    title: const Text("Budi"),
                    subtitle: const Text("Semangat ya"),
                    trailing: const Text(
                      "49",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: const Text("Status saya"),
                  subtitle: const Text("Ketuk untuk menambahkan status"),
                  trailing: const Icon(Icons.camera_alt, color: Colors.green),
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 4),
                  child: Text(
                    "Pembaruan terbaru",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: const Text("Irfhan"),
                  subtitle: const Text("Hari ini, 08.30"),
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: const Text("Irfhan"),
                  subtitle: const Row(
                    children: [
                      Icon(Icons.call_received, color: Colors.green, size: 18),
                      SizedBox(width: 6),
                      Text("Kemarin, 19.45"),
                    ],
                  ),
                  trailing: const Icon(Icons.call, color: Colors.green),
                ),
                ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: const Text("Budi"),
                  subtitle: const Row(
                    children: [
                      Icon(Icons.call_made, color: Colors.red, size: 18),
                      SizedBox(width: 6),
                      Text("Senin, 10.15"),
                    ],
                  ),
                  trailing: const Icon(Icons.videocam, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
