import 'package:faality/shared/const.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff222B44),
        //Colors.white, const Color(0xff0A0E19),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              centerTitle: true,
              elevation: 0.0,
              title: Text(
                'Notifications',
                style: TextStyle(
                  color: const Color(0xffF0D5A3),
                  fontSize: 20,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor:
                  const Color(0xff222B44), //const Color(0xff222B44),
            ),
          ],
          body: Container(
            decoration: whiteCont,
            child: ListView.separated(
              physics: ClampingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 15,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    Icons.notifications,
                    color: Color(0xff222B44),
                  ),
                  title: Text('Your request has been accepted'),
                  trailing: Icon(
                    Icons.done,
                    color: Colors.green,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 15,
                  thickness: 1,
                );
              },
            ),
          ),
        )
    );
  }
}
