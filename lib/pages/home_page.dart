import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/chat/chat_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController? controller;
  @override
  void initState() {
    controller =TabController(length: 4, vsync: this,initialIndex: 1);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp clone'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton<String>(
            onSelected: (value) {
              debugPrint(value);
            },
            itemBuilder: (context) {
            return [
              const PopupMenuItem(value: "New Group",child: Text("New Group"),),
              const PopupMenuItem(value: "New BroadCast",child: Text("New BroadCast"),),
              const PopupMenuItem(value: "Whatsapp Web",child: Text("Whatsapp Web"),),
              const PopupMenuItem(value: "Starred Messages",child: Text("Starred Messages"),),
              const PopupMenuItem(value: "Settings",child: Text("Settings"),),
            ];
          },),

        ],
        bottom:TabBar(controller: controller,
        indicatorColor: Colors.white,
        tabs: const [
          Tab(icon: Icon(Icons.camera_alt),),
          Tab(child: Text('Chats'),),
          Tab(child: Text('Status'),),
          Tab(child: Text('Calls'),),

        ],) ,
      ),
      body:  TabBarView(
        controller: controller,
          children: const [
        Text('Camera'),
       ChatScreen(),
        Text('Status'),
        Text('Call'),
      ]),
    );
  }
}
