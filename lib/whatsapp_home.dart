import 'package:flutter/material.dart';
import 'package:winterbreakproject/pages/call_screen.dart';
import 'package:winterbreakproject/pages/camera_screen.dart';
import 'package:winterbreakproject/pages/chat_screen.dart';
import 'package:winterbreakproject/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with TickerProviderStateMixin {
  late TabController _tabController = TabController(vsync: this, initialIndex: 1, length: 4);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0e8071),
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 24,),
          Icon(Icons.search),
          SizedBox(width: 24,),
          Icon(Icons.more_vert),
          SizedBox(width: 5,),
        ],
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.group_sharp)),
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(text: "Calls")
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> print("open chats"),
        backgroundColor: Color(0xff0e8071),
        child: Icon(Icons.message,color: Colors.white,),
      ),
    );
  }
}
