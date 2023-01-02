import 'package:flutter/material.dart';
import 'package:winterbreakproject/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[i].avatarUrl),
              radius: 26.0,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dummyData[i].name, style: TextStyle(fontWeight: FontWeight.w600),),
                Text(dummyData[i].time, style: TextStyle(color: Colors.grey[600], fontSize: 15.0),),
              ],
            ),
            subtitle: Container(
              child: Text(dummyData[i].message),
              padding: EdgeInsets.only(top: 5.0),
              ),
            ),
        ],
      ),
    );
  }
}
