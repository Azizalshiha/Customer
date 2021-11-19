import 'package:faality/shared/const.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Row(
          children: [
            IconButton(
              icon:Icon(Icons.photo),
              iconSize: 24,
              color: Colors.white,
              onPressed: () {},
            ),
            Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: 'Send a message...'),
              )
            ),
            IconButton(
              icon:Icon(Icons.send),
              iconSize: 24,
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
      ),
        backgroundColor: const Color(0xff222B44),
        appBar: AppBar(
          backgroundColor: const Color(0xff222B44),
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            'Khaled',
            style: TextStyle(
              color: const Color(0xffF0D5A3),
              fontSize: 20,
              fontWeight: FontWeight.w400
            )
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_horiz),
              iconSize: 25,
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          decoration: whiteCont,
          child: Column(
            children: [
              Container(
                height: 45,
                width: 300,
                margin: EdgeInsets.only(top: 35, right:55, bottom: 8),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                decoration: BoxDecoration(
                  color: Color(0x414F5386),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                child: Text('Where are you??', style: TextStyle(
                  fontSize: 16,
                ),
                ),
              ),
              Container(
                height: 45,
                width: 300,
                margin: EdgeInsets.only(top: 15, right:55, bottom: 8),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                decoration: BoxDecoration(
                  color: Color(0x414F5386),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                child: Text('Where are you??', style: TextStyle(
                  fontSize: 16,
                ),
                ),
              ),
              Container(
                height: 45,
                width: 300,
                margin: EdgeInsets.only(top: 15, right:55, bottom: 8),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                decoration: BoxDecoration(
                  color: Color(0x414F5386),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                child: Text('Where are you??', style: TextStyle(
                  fontSize: 16,
                ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
