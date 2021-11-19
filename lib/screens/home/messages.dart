import 'package:faality/screens/home/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:faality/shared/const.dart';


class Messsges extends StatelessWidget {
  const Messsges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff222b44),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            centerTitle: true,
            elevation: 0.0,
            title: Text(
              'Direct Messages',
              style: lighttext,
            ),
            backgroundColor:
            const Color(0xff222B44),
          )
        ],
        body: Container(
          width: double.infinity,
          decoration: whiteCont,
          child: SingleChildScrollView(
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChatScreen(),
                ),
              ),
              child: Column(
                children: [

                  ListTile(
                    title: Text('khaled almohaimeed', style: TextStyle(fontWeight: FontWeight.w500),),
                    subtitle: Text('Where are you now??', style: TextStyle(color: Colors.black54),),
                    leading: CircleAvatar(backgroundColor: Colors.redAccent, radius: 30,),
                    trailing: Text('17:56', style: TextStyle(fontSize: 11),),
                  ),
                  Divider(
                    height: 15,
                    thickness: 1,
                  ),
                  ListTile(
                    title: Text('khaled almohaimeed', style: TextStyle(fontWeight: FontWeight.w500),),
                    subtitle: Text('Where are you now??', style: TextStyle(color: Colors.black54),),
                    leading: CircleAvatar(backgroundColor: Colors.redAccent, radius: 30,),
                    trailing: Text('17:56', style: TextStyle(fontSize: 11),),
                  ),
                  Divider(
                    height: 15,
                    thickness: 1,
                  ),
                  ListTile(
                    title: Text('khaled almohaimeed', style: TextStyle(fontWeight: FontWeight.w500),),
                    subtitle: Text('Where are you now??', style: TextStyle(color: Colors.black54),),
                    leading: CircleAvatar(backgroundColor: Colors.redAccent, radius: 30,),
                    trailing: Text('17:56', style: TextStyle(fontSize: 11),),
                  ),
                  Divider(
                    height: 15,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
}
